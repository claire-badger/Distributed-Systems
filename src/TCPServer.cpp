#include "TCPServer.h"
#include "TCPConn.h"
#include <unistd.h>
#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>
#include <vector>
#include <fcntl.h>
#include <bits/unique_ptr.h>
#include <arpa/inet.h>
#include <iostream>

TCPServer::TCPServer() {

}


TCPServer::~TCPServer() {

}

/**********************************************************************************************
 * bindSvr - Creates a network socket and sets it nonblocking so we can loop through looking for
 *           data. Then binds it to the ip address and port
 *
 *    Throws: socket_error for recoverable errors, runtime_error for unrecoverable types
 **********************************************************************************************/

void TCPServer::bindSvr(const char *ip_addr, short unsigned int port) {

    int opt = 1;
    struct sockaddr_in sa;

    inet_pton(AF_INET, ip_addr, &(sa.sin_addr)); //set ip of sa

    //try to make new file descriptor
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0)
    {
        perror("socket failed");
        exit(EXIT_FAILURE);
    }

    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt)))
    {
        perror("setsockopt");
        exit(EXIT_FAILURE);
    }

    //set the other attributes of sockaddr
    sa.sin_family = AF_INET;
    sa.sin_port = htons( port );

    //bind the sa to the server file descriptor
    if (bind(server_fd, (struct sockaddr *)&sa, sizeof(sa))<0)
    {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }

}

/**********************************************************************************************
 * listenSvr - Performs a loop to look for connections and create TCPConn objects to handle
 *             them. Also loops through the list of connections and handles data received and
 *             sending of data. 
 *
 *    Throws: socket_error for recoverable errors, runtime_error for unrecoverable types
 **********************************************************************************************/

void TCPServer::listenSvr() {
    std::vector<TCPConn> port_connections;
    fd_set readfds;
    int activity, max_sd;
    timeval *timeout;
    timeout->tv_sec = 120; //timeout after 2 minutes
    timeout->tv_usec = 0;

    //listen on the server
    if (listen(server_fd, 5) < 0)
    {
        perror("listen");
        exit(EXIT_FAILURE);
    }

    max_sd = server_fd;

    while(1) {
        //clear the socket set
        FD_ZERO(&readfds);

        //add server socket to set
        FD_SET(server_fd, &readfds);

        //add sockets in the vector of current connections to fdset
        for (auto connection : port_connections){
            FD_SET(connection.getSocket(), &readfds);
        }

        //look for activity
        activity = select( max_sd + 1 , &readfds , NULL , NULL , timeout);
        if ((activity < 0) || (errno==EINTR))
        {
            printf("Interruption");
            exit(EXIT_FAILURE);
        }
        if (activity == 0){
            return;
        }
        if (FD_ISSET(server_fd, &readfds)) //if the server file descriptor is found it is a new connection and try to accept it
        {
            TCPConn *new_conn = new TCPConn(); //new connection obj
            new_conn->setMsgFD(STDOUT_FILENO); //mostly error checking/using stdout as a file descriptor
            if (!new_conn->accept(server_fd)){ //try to accept
                perror("accept");
                exit(EXIT_FAILURE);
            }

            //add new connection to vector
            port_connections.push_back(*new_conn);
        }
        else{
            //handle each current connection if the activity isn't on the server file descriptor
            for (int i = 0; i < port_connections.size(); i++){
                if (FD_ISSET( port_connections[i].getSocket() , &readfds))
                {
                    if (!port_connections[i].handleConnection()){
                        //erase port from vector if disconnected
                        port_connections.erase(port_connections.begin() + i);
                    }
                }
            }
        }

        //loop through connections. Just to set the max file descriptor
        for (int i = 0; i < port_connections.size(); i++){
            if (port_connections[i].getSocket() > max_sd){ //make sure max server is set for select
                max_sd = port_connections[i].getSocket();
            }
        }
    }
    }


/**********************************************************************************************
 * shutdown - Cleanly closes the socket FD.
 *
 *    Throws: socket_error for recoverable errors, runtime_error for unrecoverable types
 **********************************************************************************************/

void TCPServer::shutdown() {
    close(server_fd);
}
