#include "TCPLogTarget.h"
#include <cstdlib>
#include <sys/socket.h>
#include <netdb.h>
#include <cstring>
#include "StreamLogTarget.h"


static const int MAX_LOG_ENTRY_SIZE = 4096;

TCPLogTarget* TCPLogTarget::sSharedInstance = NULL;

TCPLogTarget::TCPLogTarget(const std::string& hostName, uint16_t hostPort) {
    setupLogSocket(hostName, hostPort);
}

TCPLogTarget::~TCPLogTarget() {
    closeLogSocket();
}

void TCPLogTarget::setupLogSocket(const std::string& hostName, uint16_t hostPort) {
	const LogTarget& errorLog = StreamLogTarget(stderr);
	
    mSocket = socket(AF_INET, SOCK_STREAM, 0);
    if (mSocket < 0) {
        errorLog.log("Unable to create log socket\n");
        return;
    }
#if defined(SO_NOSIGPIPE)
    int noSigPipe = 1;
    if (setsockopt(mSocket, SOL_SOCKET, SO_NOSIGPIPE, &noSigPipe, sizeof(int)) < 0) {
        errorLog.log("Unable to set SO_NOSIGPIPE socket option\n");
    }
#else
	errorLog.log("SO_NOSIGPIPE option not available\n");
#endif

    int tcpNoDelay = 1;
    if (setsockopt(mSocket, IPPROTO_TCP, TCP_NODELAY, &tcpNoDelay,sizeof(int))< 0) {
        errorLog.log("Unable to set TCP_NODELAY socket option\n");
    }
    
    struct hostent *host = gethostbyname(hostName.c_str());
    if (host == NULL) {
        closeLogSocket();
        errorLog.log("Log host not found %s:%d\n", hostName.c_str(), hostPort);
        return;
    }
    
    struct sockaddr_in hostAddress;
    bzero((char*) &hostAddress, sizeof(hostAddress));
    hostAddress.sin_family = AF_INET;
    bcopy((char*) host->h_addr, (char*) &hostAddress.sin_addr.s_addr, host->h_length);
    hostAddress.sin_port = htons(hostPort);
    
    if (connect(mSocket, (const struct sockaddr*) &hostAddress, sizeof(hostAddress)) < 0) {
        closeLogSocket();
        errorLog.log("Unable to connect to log host %s:%d\n", hostName.c_str(), hostPort);
    }
}

void TCPLogTarget::closeLogSocket() {
    if (mSocket >= 0) {
        close(mSocket);
        mSocket = -1;
    }
}

void TCPLogTarget::log(const char *format, va_list list) const {
	if (mSocket >= 0) {
        char logEntryBuffer[MAX_LOG_ENTRY_SIZE];
        int logEntrySize = vsnprintf(logEntryBuffer, MAX_LOG_ENTRY_SIZE, format, list);
        if (logEntrySize == -1) {
            logEntrySize = MAX_LOG_ENTRY_SIZE - 1;
        }
        
		write(mSocket, logEntryBuffer, logEntrySize);
	}
}

const TCPLogTarget& TCPLogTarget::getSharedInstance() {
    if (sSharedInstance == NULL) {
        sSharedInstance = new TCPLogTarget("127.0.0.1", 5050);
    }
    
    return *sSharedInstance;
}
