#!/usr/bin/env python3


#   C/S架构什么是C/S架构

#   •  服务器是一个软件或硬件,用于提供客户需要的“服务”

#   •  硬件上,客户端常见的就是平时所使用的PC机,服
#   务器常见的有联想、DELL等厂商生产的各种系列服务器

#   •  软件上,服务器提供的服务主要是程序的运行,数据
#   的发送与接收、合并、升级或其它的程序或数据的操作


#   套接字

#   •  套接字是一种具有“通讯端点”概念的计算机网络数
#   据结构

#   •  套接字起源于20世纪70年代加利福尼亚大学伯克利分
#   校版本的Unix

#   •  一种套接字是Unix套接字,其“家族名”为AF_UNIX

#   •  另一种套接字是基于网络的,“家族名”为AF_INET

#   •  如果把套接字比做电话的插口,那么主机与端口就像
#   区号与电话号码的一对组合



#   面向连接与无连接

#   •  无论你使用哪一种地址家族,套接字的类型只有两种。
#   一种是面向连接的套接字,另一种是无连接的套接字

#   •  面向连接的主要协议就是传输控制协议TCP,套接字
#   类型为SOCK_STREAM

#   •  无连接的主要协议是用户数据报协议UDP,套接字类
#   型为SOCK_DGRAM

#   •  python中使用socket模块中的socket函数实现套接
#   字的创建



#   socket函数与方法


#   创建TCP服务器

#   •  创建TCP服务器的主要步骤如下:
#   1.  创建服务器套接字:s = socket.socket()
#   2.  绑定地址到套接字:s.bind()
#   3.  启动监听:s.listen()
#   4.  接受客户连接:s.accept()
#   5.  与客户端通信:recv()/send()
#   6.  关闭套接字:s.close()






