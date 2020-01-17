#include "TCPConn.h"
#include <sstream>
#include <unistd.h>
#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <bits/unique_ptr.h>
#include <fcntl.h>
#include <cstring>
#include <vector>


TCPConn::TCPConn() {

}


TCPConn::~TCPConn() {

}

bool TCPConn::accept(int newsock){

    //if accept returns negative one, then return false.
    if ((this->sockfd = ::accept(newsock, (struct sockaddr *) &connfd, (socklen_t *) &connfd_len)) < 0) {
        return false;
    }

    //otherwise return true, set the private variable, send menu/greeting and return true
    fcntl(sockfd, F_SETFL, O_NONBLOCK); /* Change the socket into non-blocking state	*/
    sendMenu();
    return true;
}

int TCPConn::sendText(const char *msg){
    send(sockfd , msg , strlen(msg) , 0 );
}

std::vector<std::string> TCPConn::split_help (std::string s, std::string delimiter) {
    size_t pos_start = 0, pos_end, delim_len = delimiter.length();
    std::string token;
    std::vector<std::string> res;

    while ((pos_end = s.find (delimiter, pos_start)) != std::string::npos) {
        token = s.substr (pos_start, pos_end - pos_start);
        pos_start = pos_end + delim_len;
        if (token != "")
            res.push_back (token);
    }

    //res.push_back (s.substr (pos_start));
    return res;
}

bool TCPConn::handleConnection(){



    //returns true if connection is still good, false if disconnected
    char buffer[256] = {0};
    read(  sockfd, buffer, 256); // read from the socket
    //write(msg_fd, buffer,  strlen(buffer)); //write to stdout file descriptor. Was used for debug
    std::string bufstr = std::string(buffer, strlen(buffer));
    std::vector<std::string> commands = split_help(bufstr, "\n");
   // std::string token = bufstr.substr(0, bufstr.find("\n"));

   for (auto command : commands) {
       //go through menu options. send corresponding message
       if ("menu" == command) {
           sendMenu();
       } else if ("1" == command) {
           char const *msg = "(ᵔᵕᵔ)\n";
           sendText(msg);
       } else if ("2" == command) {
           char const *msg = "¯\\_(ツ)_/¯\n";
           sendText(msg);
       } else if ("3" == command) {
           char const *msg = "ᕙ(⇀‸↼‶)ᕗ\n";
           sendText(msg);
       } else if ("4" == command) {
           char const *msg = "[o_o]\n";
           sendText(msg);
       } else if ("5" == command) {
           char const *msg = "( ͡° ͜ʖ ͡°)\n";
           sendText(msg);
       } else if ("passwd" == command) {
           char const *msg = "TBD\n";
           sendText(msg);
       } else if ("exit\n" == command) {
           char const *msg = "Shutting down...\n";
           sendText(msg);
           disconnect();
           return false;
       } else {
           sendText("Command not found. write 'menu' for options\n");
       }
   }
    return true;
}

void TCPConn::sendMenu(){

    char const *stream  = "Hello! Welcome to my server. Type commands as indicated below:\n"
              "1. ASCII face 1\n"
              "2. ASCII face 2\n"
              "3. ASCII face 3\n"
              "4. ASCII face 4\n"
              "5. ASCII face 5\n"
              "passwd. do something with passwords\n"
              "exit. disconnect server\n"
              "menu. show menu\n";
    send(sockfd, stream, strlen(stream), 0);
}

int TCPConn::getSocket() {
    return sockfd;
}

void TCPConn::setMsgFD(int new_fd){
    msg_fd = new_fd;
}

void TCPConn::disconnect(){
    close(sockfd);
}

bool TCPConn::isConnected(){

}