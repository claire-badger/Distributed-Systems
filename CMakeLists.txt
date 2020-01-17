cmake_minimum_required(VERSION 3.15)
project(AFIT_CSCE689_HW1_S)

set(CMAKE_CXX_STANDARD 14)

include_directories(include)

add_executable(Client
    include/Client.h
    include/config.h
    include/exceptions.h
    include/strfuncts.h
    include/TCPClient.h
    src/Client.cpp
    src/client_main.cpp
        src/strfuncts.cpp
    src/TCPClient.cpp
   )

add_executable(Server include/Server.h
        include/TCPConn.h
        include/TCPServer.h
        include/strfuncts.h
        src/Server.cpp
        src/server_main.cpp
        src/strfuncts.cpp
        src/TCPConn.cpp
        src/TCPServer.cpp
        )

target_include_directories(Client PRIVATE src include)
target_include_directories(Server PRIVATE src include)