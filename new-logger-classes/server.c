/* A simple server in the internet domain using TCP
The port number is passed as an argument */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>

void error(const char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
    int sockfd, newsockfd, portno;
    socklen_t clilen;
    char buffer[256];
    struct sockaddr_in serv_addr, cli_addr;
    int n;

    if (argc < 2) {
        fprintf(stderr,"WARNING, no port provided, 5050 used as default.\n");
        portno = 5050;
    } else {
        portno = atoi(argv[1]);
    }

    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) {
        error("ERROR opening socket");
    }

    bzero((char *) &serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons(portno);
    if (bind(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) {
        error("ERROR on binding");
    }

    printf("Accepting connections on port '%d'\n", portno);
    listen(sockfd,0);
    
    while (!0) {
        clilen = sizeof(cli_addr);
        newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
        if (newsockfd < 0) {
            error("ERROR on accept");
        }

        struct sockaddr_in peer;
        socklen_t peer_len;
        peer_len = sizeof(peer);
        if (getpeername(newsockfd, (struct sockaddr*) &peer, &peer_len) == -1) {
            perror("getpeername() failed");
        } else {
            printf("Listening for messages from '%s:%d'\n\n", inet_ntoa(peer.sin_addr), ntohs(peer.sin_port));
        }

        while ((n = read(newsockfd, buffer, sizeof(buffer))) > 0) {
            printf("%.*s", n, buffer);
        }
        printf("\nConnection closed.");

        if (n < 0) {
            error("ERROR reading from socket");
        }

        close(newsockfd);
    }
    
    close(sockfd);
    
    return 0;
}
