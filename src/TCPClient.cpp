#include "TCPClient.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <iostream>
#include <fcntl.h>

/**********************************************************************************************
 * TCPClient (constructor) - Creates a Stdin file descriptor to simplify handling of user input.
 *what
 **********************************************************************************************/

TCPClient::TCPClient() {
    stdin;
}

/**********************************************************************************************
 * TCPClient (destructor) - No cleanup right now
 *
 **********************************************************************************************/

TCPClient::~TCPClient() {

}

/**********************************************************************************************
 * connectTo - Opens a File Descriptor socket to the IP address and port given in the
 *             parameters using a TCP connection.
 *
 *    Throws: socket_error exception if failed. socket_error is a child class of runtime_error
 **********************************************************************************************/

void TCPClient::connectTo(const char *ip_addr, unsigned short port) {
    struct sockaddr_in ca;

    inet_pton(AF_INET, ip_addr, &(ca.sin_addr));

    //create socket
    if ((client_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
        printf("\n Socket creation error \n");
        //throw error
    }

    //set attributes of sockaddr
    ca.sin_family = AF_INET;
    ca.sin_port = htons(port);

    if (connect(client_fd, (struct sockaddr *)&ca, sizeof(ca)) < 0)
    {
        printf("\nConnection Failed \n");
        //throw error
    }

    fcntl(client_fd, F_SETFL,  O_NONBLOCK); /* Change the socket into non-blocking state	*/
}

/**********************************************************************************************
 * handleConnection - Performs a loop that checks if the connection is still open, then 
 *                    looks for user input and sends it if available. Finally, looks for data
 *                    on the socket and sends it.
 * 
 *    Throws: socket_error for recoverable errors, runtime_error for unrecoverable types
 **********************************************************************************************/

void TCPClient::handleConnection() {

    fd_set readfds;
    char *buffer[1024];
    char *serverbuffer[1024];

        while (1) {

            //set fd_sets for select()
            FD_ZERO(&readfds);

            FD_SET(client_fd, &readfds);
            FD_SET(STDIN_FILENO, &readfds);

            int activity = select(client_fd + 1, &readfds, NULL, NULL, NULL);
            if ((activity < 0) || (errno == EINTR)) {
                printf("Interruption");
                exit(0);
            }
            //if it is a connection on the socket, then read and write
            if (FD_ISSET(client_fd, &readfds))
            {
                bzero(buffer, 256);
                bzero(serverbuffer,256);

                //read new message
                read(client_fd, serverbuffer, 1024);
                printf(reinterpret_cast<const char *>(serverbuffer)); //print message to console
                printf("->: "); //expect more input

                fgets(reinterpret_cast<char *>(buffer), 255, stdin);
                int n = write(client_fd,buffer,strlen(reinterpret_cast<const char *>(buffer)));//write to socket
                if (n < 0){
                    printf("ERROR writing to socket");
                }
        }
    }
}

/**********************************************************************************************
 * closeConnection - closes connection to client file descriptor
 *
 *    Throws: socket_error for recoverable errors, runtime_error for unrecoverable types
 **********************************************************************************************/

void TCPClient::closeConn() {
    close(client_fd);
}


