## Process this file with automake to produce Makefile.in 

noinst_LIBRARIES = librendermain.a

if MAKE_OPENGL
OPENGL_SOURCES = Rasterizer_Shader.h RenderRasterize_Shader.h		\
  Rasterizer_OGL.h OGL_Faders.h OGL_Headers.h OGL_Model_Def.h           \
  OGL_Render.h OGL_Subst_Texture_Def.h OGL_Texture_Def.h OGL_Textures.h	\
  OGL_Setup.h OGL_Shader.h						\
									\
  Rasterizer_Shader.cpp RenderRasterize_Shader.cpp OGL_Faders.cpp	\
  OGL_Model_Def.cpp OGL_Render.cpp OGL_Setup.cpp			\
  OGL_Subst_Texture_Def.cpp OGL_Textures.cpp OGL_Shader.cpp
else
OPENGL_SOURCES = 
endif

librendermain_a_SOURCES = AnimatedTextures.h collection_definition.h	\
  Crosshairs.h DDS.h ImageLoader.h low_level_textures.h Rasterizer.h	\
  Rasterizer_SW.h render.h RenderPlaceObjs.h RenderRasterize.h		\
  RenderSortPoly.h RenderVisTree.h scottish_textures.h			\
  shape_definitions.h shape_descriptors.h SW_Texture_Extras.h		\
  textures.h vec3.h							\
									\
  AnimatedTextures.cpp Crosshairs_SDL.cpp ImageLoader_Shared.cpp	\
  render.cpp RenderPlaceObjs.cpp RenderRasterize.cpp RenderSortPoly.cpp	\
  RenderVisTree.cpp scottish_textures.cpp shapes.cpp $(OPENGL_SOURCES)	\
  SW_Texture_Extras.cpp textures.cpp ImageLoader_SDL.cpp

EXTRA_librendermain_a_SOURCES = Rasterizer_Shader.cpp			\
  RenderRasterize_Shader.cpp OGL_Faders.cpp OGL_Model_Def.cpp		\
  OGL_Render.cpp OGL_Setup.cpp OGL_Subst_Texture_Def.cpp		\
  OGL_Textures.cpp OGL_Shader.cpp

INCLUDES = -I$(top_srcdir)/Source_Files/CSeries -I$(top_srcdir)/Source_Files/Files \
  -I$(top_srcdir)/Source_Files/GameWorld -I$(top_srcdir)/Source_Files/Input \
  -I$(top_srcdir)/Source_Files/Misc -I$(top_srcdir)/Source_Files/ModelView \
  -I$(top_srcdir)/Source_Files/Network -I$(top_srcdir)/Source_Files/Pfhortran \
  -I$(top_srcdir)/Source_Files/RenderOther -I$(top_srcdir)/Source_Files/Sound \
  -I$(top_srcdir)/Source_Files/XML -I$(top_srcdir)/Source_Files
