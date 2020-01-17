#ifndef TCPCONN_H
#define TCPCONN_H
#include <string>
#include <netinet/in.h>
#include <vector>

//#include "FileDesc.h"

const int max_attempts = 2;

class TCPConn 
{
public:
   TCPConn();
   ~TCPConn();

   bool accept(int newsock);

   int sendText(const char *msg);

   bool handleConnection(); //looks for data, read data and put in buffer if it finds something as a command, execute certain
   void startAuthentication();
   void getUsername();
   void getPasswd();
   void sendMenu();
   //void getMenuChoice();
   void setPassword();
   void changePassword();
   int getSocket();
   void setMsgFD(int new_fd);
    std::vector<std::string> split_help (std::string, std::string);  //used for parsing commands
   
   bool getUserInput(std::string &cmd);

   void disconnect();
   bool isConnected();

   in_addr getIPAddr() { return connfd.sin_addr; };

private:
    int sockfd;

    int msg_fd;

   enum statustype { s_username, s_changepwd, s_confirmpwd, s_passwd, s_menu };

   statustype _status = s_username;

   struct sockaddr_in connfd;

    socklen_t connfd_len;
 
   std::string _username; // The username this connection is associated with

   std::string _inputbuf;

   std::string _newpwd; // Used to store user input for changing passwords

   int _pwd_attempts = 0;
};


#endif
