#!/usr/bin/env python3

import  socket
import  time

class TcpTimeserv:
    def __init__(self,host='',port=12345):
        self.addr = (host,port)
        self.serv = socket.socket()
        self.serv.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
        self.serv.bind(self.addr)
        self.serv.listen(1)

    def chat(self,cli_sock):
        while True:
            data  = cli_sock.recv(1024).decode()
            if data.strip() == 'q':
                break
            data = '[%s] %s' % (time.strftime('%H:%M:%S'),data)
            cli_sock.send(data.encode())


    def mainloop(self):
        while True:
            try:
                cli_sock,cli_addr = self.serv.accept()
            except KeyboardInterrupt:
                print()
                break
            self.chat(cli_sock)
            cli_sock.close()
        cli_sock.close()

if __name__ == '__main__':
    s = TcpTimeserv()
    s.mainloop()