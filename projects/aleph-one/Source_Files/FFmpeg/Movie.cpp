/*
 
  Copyright (C) 2012 and beyond by Jeremiah Morris
  and the "Aleph One" developers.
  
  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 3 of the License, or
  (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  This license is contained in the file "COPYING",
  which is included with this source code; it is available online at
  http://www.gnu.org/licenses/gpl.html
  
  Movie export using libav/ffmpeg
  Thanks to https://sourceforge.net/p/libavexample/ by Arash Shafiei
 
 */


#include "cseries.h"
#include "csalerts.h"
#include "Logging.h"

#include <boost/lexical_cast.hpp>

// for CPU count
#ifdef HAVE_SYSCONF
#include <unistd.h>
#endif
#ifdef HAVE_SYSCTLBYNAME
#include <sys/types.h>
#include <sys/sysctl.h>
#endif

#ifdef HAVE_OPENGL
#include "OGL_Headers.h"
#endif

#include "Movie.h"
#include "interface.h"
#include "screen.h"
#include "Mixer.h"
#include "preferences.h"

Movie* Movie::m_instance = NULL;

#ifndef HAVE_FFMPEG

struct libav_vars {
    bool inited;
};

void Movie::PromptForRecording() {}
void Movie::StartRecording(std::string path) {}
bool Movie::IsRecording() { return false; }
void Movie::StopRecording() {}
void Movie::AddFrame(FrameType ftype) {}

bool Movie::Setup() { return false; }
int Movie::Movie_EncodeThread(void *arg) { return 0; }
void Movie::EncodeThread() {}
void Movie::EncodeVideo(bool last) {}
void Movie::EncodeAudio(bool last) {}
Movie::Movie() {}

#else

#ifdef __cplusplus
extern "C"
{
#endif
#include "libavformat/avformat.h"
#include "libavcodec/avcodec.h"
#include "libavutil/mathematics.h"
#include "libavutil/opt.h"
#include "libavutil/fifo.h"
#include "libswscale/swscale.h"
#ifdef __cplusplus
}
#endif

// shamelessly stolen from SDL 2.0
static int get_cpu_count(void)
{
    static int cpu_count = 0;
    if (cpu_count == 0) {
#if defined(HAVE_SYSCONF) && defined(_SC_NPROCESSORS_ONLN)
        cpu_count = (int)sysconf(_SC_NPROCESSORS_ONLN);
#endif
#ifdef HAVE_SYSCTLBYNAME
        size_t size = sizeof(cpu_count);
        sysctlbyname("hw.ncpu", &cpu_count, &size, NULL, 0);
#endif
#ifdef __WIN32__
        SYSTEM_INFO info;
        GetSystemInfo(&info);
        cpu_count = info.dwNumberOfProcessors;
#endif
        /* There has to be at least 1, right? :) */
        if (cpu_count <= 0)
            cpu_count = 1;
    }
    return cpu_count;
}


#define MAX_AUDIO_CHANNELS 2

struct libav_vars {
    bool inited;
    
    AVFrame *audio_frame;
    AVFifoBuffer *audio_fifo;
    uint8_t *audio_data;
    uint8_t *audio_data_conv;
    
    AVFrame *video_frame;
    uint8_t *video_buf;
    int video_bufsize;
    uint8_t *video_data;
    
    struct SwsContext *sws_ctx;
    AVFormatContext *fmt_ctx;
    int video_stream_idx;
    int audio_stream_idx;
};
typedef struct libav_vars libav_vars_t;

#ifdef __cplusplus
extern "C" {
#endif

int convert_audio(int in_samples, int in_channels, int in_stride,
                  enum AVSampleFormat in_fmt,
                  const uint8_t *in_buf,
                  int out_samples, int out_channels, int out_stride,
                  enum AVSampleFormat out_fmt,
                  uint8_t *out_buf)
{
    if (in_channels != out_channels)
        return 0;   // unsupported conversion
    if (out_samples < in_samples)
        in_samples = out_samples;
    
    int in_bps;
    switch (in_fmt)
    {
        case AV_SAMPLE_FMT_U8:
            in_bps = 1;
            break;
        case AV_SAMPLE_FMT_S16:
        case AV_SAMPLE_FMT_S16P:
            in_bps = 2;
            break;
        case AV_SAMPLE_FMT_FLT:
        case AV_SAMPLE_FMT_FLTP:
            in_bps = 4;
            break;
        default:
            return 0;   // unsupported format
    }
    int in_bytes = in_bps * in_samples * in_channels;
    
    int out_bps;
    switch (out_fmt)
    {
        case AV_SAMPLE_FMT_S16:
            out_bps = 2;
            break;
        case AV_SAMPLE_FMT_FLT:
        case AV_SAMPLE_FMT_FLTP:
            out_bps = 4;
            break;
        default:
            return 0;   // unsupported format
    }
    int out_bytes = out_bps * out_samples * out_channels;
    
    in_stride = in_stride / in_bps;
    out_stride = out_stride / out_bps;
    
    if (in_fmt == out_fmt)
    {
        if (av_sample_fmt_is_planar(in_fmt))
            for (int c = 0; c < in_channels; c++)
                memcpy(out_buf + (c * out_stride),
                       in_buf + (c * in_stride),
                       in_samples * in_bps);
        else
            memcpy(out_buf, in_buf, in_bytes);
    }
    else if (in_fmt == AV_SAMPLE_FMT_U8)
    {
        const uint8 *ib = reinterpret_cast<const uint8 *>(in_buf);
        if (out_fmt == AV_SAMPLE_FMT_S16)
        {
            int16 *ob = reinterpret_cast<int16 *>(out_buf);
            for (int i = 0; i < in_samples * in_channels; i++)
                ob[i] = (ib[i] << 8) + ib[i] - 32768;
        }
        else
            return 0;   // unsupported conversion
    }
    else if (in_fmt == AV_SAMPLE_FMT_S16)
    {
        const int16 *ib = reinterpret_cast<const int16 *>(in_buf);
        if (out_fmt == AV_SAMPLE_FMT_FLT)
        {
            float *ob = reinterpret_cast<float *>(out_buf);
            for (int i = 0; i < in_samples * in_channels; i++)
                ob[i] = ib[i] / 32768.0f;
        }
        else if (out_fmt == AV_SAMPLE_FMT_FLTP)
        {
            float *ob = reinterpret_cast<float *>(out_buf);
            for (int s = 0; s < in_samples; s++)
                for (int c = 0; c < in_channels; c++)
                    ob[(c * out_stride) + s] = ib[(s * in_channels) + c] / 32768.0f;
        }
        else
            return 0;   // unsupported conversion
    }
    else if (in_fmt == AV_SAMPLE_FMT_FLT)
    {
        const float *ib = reinterpret_cast<const float *>(in_buf);
        if (out_fmt == AV_SAMPLE_FMT_S16)
        {
            int16 *ob = reinterpret_cast<int16 *>(out_buf);
            for (int i = 0; i < in_samples * in_channels; i++)
                ob[i] = ib[i] * 32768.0f;
        }
        else
            return 0;   // unsupported conversion
    }
    else if (in_fmt == AV_SAMPLE_FMT_FLTP)
    {
        const float *ib = reinterpret_cast<const float *>(in_buf);
        if (out_fmt == AV_SAMPLE_FMT_S16)
        {
            int16 *ob = reinterpret_cast<int16 *>(out_buf);
            for (int s = 0; s < in_samples; s++)
                for (int c = 0; c < in_channels; c++)
                    ob[(s * in_channels) + c] = ib[(c * in_stride) + s] * 32768.0f;
        }
        else
            return 0;   // unsupported conversion
    }
    else if (in_fmt == AV_SAMPLE_FMT_S16P)
    {
        const int16 *ib = reinterpret_cast<const int16 *>(in_buf);
        if (out_fmt == AV_SAMPLE_FMT_S16)
        {
            int16 *ob = reinterpret_cast<int16 *>(out_buf);
            for (int s = 0; s < in_samples; s++)
                for (int c = 0; c < in_channels; c++)
                    ob[(s * in_channels) + c] = ib[(c * in_stride) + s];
        }
        else
            return 0;   // unsupported conversion
    }
    
    // pad output if desired
    if (out_samples > in_samples)
    {
        if (av_sample_fmt_is_planar(out_fmt))
        {
            for (int c = 0; c < out_channels; c++)
                memset(out_buf + (c * out_stride), 0, (out_samples - in_samples) * out_bps);
        }
        else
            memset(out_buf + in_bytes, 0, out_bytes - in_bytes);
    }

    return out_bytes;
}

#ifdef __cplusplus
}
#endif

int ScaleQuality(int quality, int zeroLevel, int fiftyLevel, int hundredLevel)
{
    switch (quality)
    {
        case 50:
            return fiftyLevel;
        case 100:
            return hundredLevel;
        case 0:
            return zeroLevel;
    }
    
    float min, diff, frac;
    if (quality < 50)
    {
        min = zeroLevel;
        diff = fiftyLevel - zeroLevel;
        frac = quality / 50.0f;
    }
    else
    {
        min = fiftyLevel;
        diff = hundredLevel - fiftyLevel;
        frac = (quality - 50) / 50.0f;
    }
    return min + (diff * frac);
}

Movie::Movie() :
  moviefile(""),
  temp_surface(NULL),
  av(NULL),
  encodeThread(NULL),
  encodeReady(NULL),
  fillReady(NULL),
  stillEncoding(0)
{
    av = new libav_vars_t;
    memset(av, 0, sizeof(libav_vars_t));
}

void Movie::PromptForRecording()
{
	FileSpecifier dst_file;
	if (!dst_file.WriteDialog(_typecode_movie, "EXPORT FILM", "Untitled Movie.webm"))
		return;
	StartRecording(dst_file.GetPath());
}

void Movie::StartRecording(std::string path)
{
	StopRecording();
	moviefile = path;
	SDL_PauseAudio(IsRecording());
}

bool Movie::IsRecording()
{
  return (moviefile.length() > 0);
}

bool Movie::Setup()
{
    if (!IsRecording())
        return false;
    if (!av)
        return false;

    bool success = true;
    std::string err_msg;
    
	alephone::Screen *scr = alephone::Screen::instance();
	view_rect = scr->window_rect();
	
	if (SDL_GetVideoSurface()->flags & SDL_OPENGL)
		view_rect.y = scr->height() - (view_rect.y + view_rect.h);

	temp_surface = SDL_CreateRGBSurface(SDL_SWSURFACE, view_rect.w, view_rect.h, 32,
										0x00ff0000, 0x0000ff00, 0x000000ff,
										0);
	success = (temp_surface != NULL);
	if (!success) err_msg = "Could not create SDL surface";

    Mixer *mx = Mixer::instance();
    
    av_register_all();
    avcodec_register_all();
    
    // Open output file
    AVOutputFormat *fmt;
    if (success)
    {
        fmt = av_guess_format("webm", NULL, NULL);
        success = fmt;
        if (!success) err_msg = "Could not find output format";
    }
    if (success)
    {
        av->fmt_ctx = avformat_alloc_context();
        success = av->fmt_ctx;
        if (!success) err_msg = "Could not allocate movie format context";
    }
    if (success)
    {
        av->fmt_ctx->oformat = fmt;
        strcpy(av->fmt_ctx->filename, moviefile.c_str());
        success = (0 <= avio_open(&av->fmt_ctx->pb, av->fmt_ctx->filename, AVIO_FLAG_WRITE));
        if (!success) err_msg = "Could not open movie file for writing";
    }
    
    // Open output video stream
    AVCodec *video_codec;
    AVStream *video_stream;
    if (success)
    {
        video_codec = avcodec_find_encoder(CODEC_ID_VP8);
        success = video_codec;
        if (!success) err_msg = "Could not find VP8 encoder";
    }
    if (success)
    {
        video_stream = avformat_new_stream(av->fmt_ctx, video_codec);
        success = video_stream;
        if (!success) err_msg = "Could not open output video stream";
    }
    if (success)
    {
        video_stream->codec->codec_id = video_codec->id;
        video_stream->codec->codec_type = AVMEDIA_TYPE_VIDEO;
        video_stream->codec->width = view_rect.w;
        video_stream->codec->height = view_rect.h;
        video_stream->codec->time_base = (AVRational){1, TICKS_PER_SECOND};
        video_stream->codec->pix_fmt = PIX_FMT_YUV420P;
        video_stream->codec->flags |= CODEC_FLAG_CLOSED_GOP;
        video_stream->codec->thread_count = get_cpu_count();
        
        if (av->fmt_ctx->oformat->flags & AVFMT_GLOBALHEADER)
            video_stream->codec->flags |= CODEC_FLAG_GLOBAL_HEADER;
        
        av->video_stream_idx = video_stream->index;
        
        // tuning options
        int vq = graphics_preferences->movie_export_video_quality;
        video_stream->codec->bit_rate = ScaleQuality(vq, 100*1024, 1024*1024, 10*1024*1024);
        video_stream->codec->qmin = ScaleQuality(vq, 10, 4, 0);
        video_stream->codec->qmax = ScaleQuality(vq, 63, 63, 50);
        std::string crf = boost::lexical_cast<std::string>(ScaleQuality(vq, 63, 10, 4));
        av_opt_set(video_stream->codec->priv_data, "crf", crf.c_str(), 0);
        
        success = (0 <= avcodec_open2(video_stream->codec, video_codec, NULL));
        if (!success) err_msg = "Could not open video codec";
    }
    if (success)
    {
        av->video_bufsize = view_rect.w * view_rect.h * 4 + 10000;
        av->video_buf = static_cast<uint8_t *>(av_malloc(av->video_bufsize));
        success = av->video_buf;
        if (!success) err_msg = "Could not allocate video buffer";
    }
    if (success)
    {
        av->video_frame = avcodec_alloc_frame();
        success = av->video_frame;
        if (!success) err_msg = "Could not allocate video frame";
    }
    if (success)
    {
        int numbytes = avpicture_get_size(video_stream->codec->pix_fmt, view_rect.w, view_rect.h);
        av->video_data = static_cast<uint8_t *>(av_malloc(numbytes));
        success = av->video_data;
        if (!success) err_msg = "Could not allocate video data buffer";
    }
    if (success)
    {
        avpicture_fill(reinterpret_cast<AVPicture *>(av->video_frame), av->video_data, video_stream->codec->pix_fmt, view_rect.w, view_rect.h);
    }
    
    // Open output audio stream
    AVCodec *audio_codec;
    AVStream *audio_stream;
    if (success)
    {
        audio_codec = avcodec_find_encoder(CODEC_ID_VORBIS);
        success = audio_codec;
        if (!success) err_msg = "Could not find Vorbis encoder";
    }
    if (success)
    {
        audio_stream = avformat_new_stream(av->fmt_ctx, audio_codec);
        success = audio_stream;
        if (!success) err_msg = "Could not open output audio stream";
    }
    if (success)
    {
        audio_stream->codec->strict_std_compliance = FF_COMPLIANCE_EXPERIMENTAL;
        audio_stream->codec->codec_id = audio_codec->id;
        audio_stream->codec->codec_type = AVMEDIA_TYPE_AUDIO;
        audio_stream->codec->sample_rate = mx->obtained.freq;
        audio_stream->codec->channels = 2;
        
        if (av->fmt_ctx->oformat->flags & AVFMT_GLOBALHEADER)
            audio_stream->codec->flags |= CODEC_FLAG_GLOBAL_HEADER;
        
        av->audio_stream_idx = audio_stream->index;
        
        // tuning options
        int aq = graphics_preferences->movie_export_audio_quality;
        audio_stream->codec->global_quality = audio_stream->quality = FF_QP2LAMBDA * (aq / 10);
        audio_stream->codec->flags |= CODEC_FLAG_QSCALE;
        
        // find correct sample format
        audio_stream->codec->sample_fmt = AV_SAMPLE_FMT_S16;
        success = (0 <= avcodec_open2(audio_stream->codec, audio_codec, NULL));
        if (!success)
        {
            audio_stream->codec->sample_fmt = AV_SAMPLE_FMT_FLT;
            success = (0 <= avcodec_open2(audio_stream->codec, audio_codec, NULL));
        }
        if (!success)
        {
            audio_stream->codec->sample_fmt = AV_SAMPLE_FMT_FLTP;
            success = (0 <= avcodec_open2(audio_stream->codec, audio_codec, NULL));
        }
        if (!success) err_msg = "Could not open audio codec";
    }
    if (success)
    {
        av->audio_frame = avcodec_alloc_frame();
        success = av->audio_frame;
        if (!success) err_msg = "Could not allocate audio frame";
    }
    if (success)
    {
        av->audio_fifo = av_fifo_alloc(262144);
        success = av->audio_fifo;
        if (!success) err_msg = "Could not allocate audio fifo";
    }
    if (success)
    {
        av->audio_data = reinterpret_cast<uint8_t *>(av_malloc(524288));
        success = av->audio_data;
        if (!success) err_msg = "Could not allocate audio data buffer";
    }
    if (success)
    {
        av->audio_data_conv = reinterpret_cast<uint8_t *>(av_malloc(524288));
        success = av->audio_data_conv;
        if (!success) err_msg = "Could not allocate audio conversion buffer";
    }
    
    // initialize conversion context
    if (success)
    {
        av->sws_ctx = sws_getContext(temp_surface->w, temp_surface->h, PIX_FMT_RGB32,
                                     video_stream->codec->width,
                                     video_stream->codec->height,
                                     video_stream->codec->pix_fmt,
                                     SWS_BILINEAR,
                                     NULL, NULL, NULL);
        success = av->sws_ctx;
        if (!success) err_msg = "Could not create video conversion context";
    }
    
    // Start movie file
    if (success)
    {
        avformat_write_header(av->fmt_ctx, NULL);
    }
    
    // set up our threads and intermediate storage
    if (success)
    {
        videobuf.resize(av->video_bufsize);
        audiobuf.resize(2 * 2 * mx->obtained.freq / 30);
	}
	if (success)
	{
		encodeReady = SDL_CreateSemaphore(0);
		fillReady = SDL_CreateSemaphore(1);
		stillEncoding = true;
		success = encodeReady && fillReady;
		if (!success) err_msg = "Could not create movie thread semaphores";
	}
	if (success)
	{
		encodeThread = SDL_CreateThread(Movie_EncodeThread, this);
		success = encodeThread;
		if (!success) err_msg = "Could not create movie encoding thread";
	}
	
	if (!success)
	{
		StopRecording();
		std::string full_msg = "Your movie could not be exported. (";
		full_msg += err_msg;
		full_msg += ".)";
        logError(full_msg.c_str());
		alert_user(full_msg.c_str());
	}
    av->inited = success;
	return success;
}

int Movie::Movie_EncodeThread(void *arg)
{
	reinterpret_cast<Movie *>(arg)->EncodeThread();
	return 0;
}

void Movie::EncodeVideo(bool last)
{
    // convert video
    AVStream *vstream = av->fmt_ctx->streams[av->video_stream_idx];
    AVCodecContext *vcodec = vstream->codec;
    
    AVFrame *frame = NULL;
    if (!last)
    {
        int pitch[] = { temp_surface->pitch, 0 };
        const uint8_t *const pdata[] = { reinterpret_cast<uint8_t *>(temp_surface->pixels), NULL };
    
        sws_scale(av->sws_ctx, pdata, pitch, 0, temp_surface->h,
                  av->video_frame->data, av->video_frame->linesize);
        av->video_frame->pts = vcodec->frame_number;
        frame = av->video_frame;
    }
    
    bool done = false;
    while (!done)
    {
        // add video
        int vsize = avcodec_encode_video(vcodec,
                                         av->video_buf, av->video_bufsize,
                                         frame);
        if (vsize > 0)
        {
            AVPacket pkt;
            av_init_packet(&pkt);
            if (vcodec->coded_frame->pts != AV_NOPTS_VALUE)
            {
                pkt.pts = av_rescale_q(vcodec->coded_frame->pts,
                                       vcodec->time_base,
                                       vstream->time_base);
            }
            if (vcodec->coded_frame->key_frame)
                pkt.flags |= AV_PKT_FLAG_KEY;
            pkt.stream_index = vstream->index;
            pkt.data = av->video_buf;
            pkt.size = vsize;
            av_interleaved_write_frame(av->fmt_ctx, &pkt);
            av_free_packet(&pkt);
        }
        
        if (!last || vsize <= 0)
            done = true;
    }
}

void Movie::EncodeAudio(bool last)
{
    AVStream *astream = av->fmt_ctx->streams[av->audio_stream_idx];
    AVCodecContext *acodec = astream->codec;
    
    
    av_fifo_generic_write(av->audio_fifo, &audiobuf[0], audiobuf.size(), NULL);
    
    // bps: bytes per sample
    int channels = acodec->channels;
    int read_bps = 2;
    int write_bps = av_get_bytes_per_sample(acodec->sample_fmt);
    
    int max_read = acodec->frame_size * read_bps * channels;
    int min_read = last ? read_bps * channels : max_read;
    while (av_fifo_size(av->audio_fifo) >= min_read)
    {
        int read_bytes = MIN(av_fifo_size(av->audio_fifo), max_read);
        av_fifo_generic_read(av->audio_fifo, av->audio_data, read_bytes, NULL);
        
        // convert
        int read_samples = read_bytes / (read_bps * channels);
        int write_samples = read_samples;
        if (read_samples < acodec->frame_size)
        {
            // shrink or pad audio frame
            if (acodec->codec->capabilities & CODEC_CAP_SMALL_LAST_FRAME)
                acodec->frame_size = write_samples;
            else
                write_samples = acodec->frame_size;
        }

        convert_audio(read_samples, acodec->channels, -1,
                      AV_SAMPLE_FMT_S16, av->audio_data,
                      write_samples, acodec->channels, write_samples * write_bps,
                      acodec->sample_fmt, av->audio_data_conv);
                      
        avcodec_get_frame_defaults(av->audio_frame);
        av->audio_frame->nb_samples = write_samples;
        int asize = avcodec_fill_audio_frame(av->audio_frame, acodec->channels,
                                             acodec->sample_fmt,
                                             av->audio_data_conv,
                                             write_samples * write_bps * channels, 1);
        if (asize >= 0)
        {
            AVPacket pkt;
            memset(&pkt, 0, sizeof(AVPacket));
            av_init_packet(&pkt);
            
            int got_pkt = 0;
            if (0 == avcodec_encode_audio2(acodec, &pkt, av->audio_frame, &got_pkt)
                && got_pkt)
            {
                if (acodec->coded_frame->pts != AV_NOPTS_VALUE)
                {
                    pkt.pts = av_rescale_q(acodec->coded_frame->pts,
                                           acodec->time_base,
                                           astream->time_base);
                }
                pkt.stream_index = astream->index;
                pkt.flags |= AV_PKT_FLAG_KEY;
                av_interleaved_write_frame(av->fmt_ctx, &pkt);
                av_free_packet(&pkt);
            }
        }
    }
    
}

void Movie::EncodeThread()
{
	while (true)
	{
		SDL_SemWait(encodeReady);
		if (!stillEncoding)
		{
			// signal to quit
			SDL_SemPost(fillReady);
			return;
		}
        
        // add video and audio
        EncodeVideo(false);
        EncodeAudio(false);
		
		SDL_SemPost(fillReady);
	}
}

void Movie::AddFrame(FrameType ftype)
{
	if (!IsRecording())
		return;
	if (!av->inited)
	{
	  if (ftype == FRAME_FADE)
	    return;
	  if (!Setup())
	    return;
	}
	
	if (ftype == FRAME_FADE && get_keyboard_controller_status())
		return;
	
	SDL_SemWait(fillReady);
  	
	SDL_Surface *video = SDL_GetVideoSurface();
	if (!(video->flags & SDL_OPENGL))
	{
		SDL_BlitSurface(video, &view_rect, temp_surface, NULL);
	}
#ifdef HAVE_OPENGL
	else
	{
		// Read OpenGL frame buffer
		glReadPixels(view_rect.x, view_rect.y, view_rect.w, view_rect.h, GL_BGRA, GL_UNSIGNED_INT_8_8_8_8_REV, &videobuf.front());
		
		// Copy pixel buffer (which is upside-down) to surface
		for (int y = 0; y < view_rect.h; y++)
			memcpy((uint8 *)temp_surface->pixels + temp_surface->pitch * y, &videobuf.front() + view_rect.w * 4 * (view_rect.h - y - 1), view_rect.w * 4);
	}
#endif
	
	int audio_bytes_per_frame = audiobuf.size();
	Mixer *mx = Mixer::instance();
	int old_vol = mx->main_volume;
	mx->main_volume = 0x100;
	mx->Mix(&audiobuf.front(), audio_bytes_per_frame / 4, true, true, true);
	mx->main_volume = old_vol;
	
	SDL_SemPost(encodeReady);
}

void Movie::StopRecording()
{
	if (encodeThread)
	{
		stillEncoding = false;
		SDL_SemPost(encodeReady);
		SDL_WaitThread(encodeThread, NULL);
		encodeThread = NULL;
	}
	if (encodeReady)
	{
		SDL_DestroySemaphore(encodeReady);
		encodeReady = NULL;
	}
	if (fillReady)
	{
		SDL_DestroySemaphore(fillReady);
		fillReady = NULL;
	}
	if (temp_surface)
	{
		SDL_FreeSurface(temp_surface);
		temp_surface = NULL;
	}
    
    if (av->inited)
    {
        // flush video and audio
        EncodeVideo(true);
        EncodeAudio(true);
        avcodec_flush_buffers(av->fmt_ctx->streams[av->audio_stream_idx]->codec);
        avcodec_flush_buffers(av->fmt_ctx->streams[av->video_stream_idx]->codec);
        av_write_trailer(av->fmt_ctx);
        av->inited = false;
    }
    
    if (av->audio_fifo)
    {
        av_fifo_free(av->audio_fifo);
        av->audio_fifo = NULL;
    }
    if (av->audio_data)
    {
        av_free(av->audio_data);
        av->audio_data = NULL;
    }
    if (av->audio_frame)
    {
        av_free(av->audio_frame);
        av->audio_frame = NULL;
    }
    
    if (av->video_buf)
    {
        av_free(av->video_buf);
        av->video_buf = NULL;
    }
    if (av->video_data)
    {
        av_free(av->video_data);
        av->video_data = NULL;
    }
    if (av->video_frame)
    {
        av_free(av->video_frame);
        av->video_frame = NULL;
    }
    
    if (av->sws_ctx)
    {
        av_free(av->sws_ctx);
        av->sws_ctx = NULL;
    }

    if (av->fmt_ctx)
    {
        for (int i = 0; i < av->fmt_ctx->nb_streams; i++)
        {
            avcodec_close(av->fmt_ctx->streams[i]->codec);
        }
        avio_close(av->fmt_ctx->pb);
        avformat_free_context(av->fmt_ctx);
        av->fmt_ctx = NULL;
    }

	moviefile = "";
	SDL_PauseAudio(false);
}

#endif
