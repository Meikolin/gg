#!/bin/bash

    #  ssh

    #  安全 shell, 登陆远端主机并在其上运行命令. 
    #  这个工具具有身份认证和加密的功能, 可
    #  以安全的替换 telnet, rlogin, rcp, 和 rsh 等工具.
    #  参见 man 页 来获取详细信息.

    # remote.bash  # 使用ssh

    # 这个例子是 Michael Zick 编写的.
    # 授权使用.
    #
    #
    #
    # 假设: -----

    # fd-2(文件描述符 2) 并没有被抛弃 ( '2>/dev/null' ).
    # ssh/sshd 假设 stderr ('2') 将会被显示给用户.
    #
    #   sshd 正运行在你的机器上.
    #   对于大多数 '标准' 的发行版, 是应该有的,
    #+  并且没有一些稀奇古怪的 ssh-keygen.
    
    # 在你的机器上从命令行中试一下 ssh:
    
    #
    # $ ssh $HOSTNAME
    # 不同特殊的准备, 你将被要求输入你的密码.
    # 输入密码
    # 完成后, $ exit
    #
    # 好使了么? 如果好使了, 你可以做好准备来获取更多的乐趣了.
   
    # 在你的机器上用 'root'身份来试试 ssh:
    #
    #
    # $ ssh -l root $HOSTNAME
    # 当询问密码时, 输入 root 的密码, 别输入你的密码.
    #
    # Last login: Tue Aug 10 20:25:49 2004 from localhost.localdomain
    # 完成后键入 'exit'.
    # 上边的动作将会给你一个交互的 shell.
    # 在 'single command' 模式下建立 sshd 是可能的, <rojy bug>
    #+ 不过这已经超出本例的范围了.
    # 唯一需要注意的事情是下面都可以工作在37 #+ 'single command' 模式.
    
    # 一个基本的写输出(本地)命令.
    
    ls -l 

    # 现在在远端的主机上使用同样的基本命令

    # 使用一套不同的 'USERNAME' 和 'HOSTNAME' :

    USER=${USERNAME:-$(whoami)}

    HOST=${HOSTNAME:-$(hostname)}

    # 现在在远端主机上运行上边的命令行命令,

    #+ 当然, 所有的传输都被加密了.

    ssh -l ${USER} ${HOST} "ls -l"

    # 期望的结果就是在远端主机上列出你的
    #+ username 主目录的所有文件.
    # 如果想看点不一样的, 那就
    #+ 在别的地方运行这个脚本, 别再你的主目录上运行这个脚本.

    # 换句话说, Bash 命令已经作为一个引用行
    #+ 被传递到远端的 shell 中了,这样就可以在远端的机器上运行它了.
    # 在这种情况下, sshd 代表你运行了 ' bash -c "ls -l" '.

   # 对于每个命令行如果想不输入密码的话,
   #+ 对于这种类似的议题, 可以参阅
   #+ man ssh
   #+ man ssh-keygen
   #+ man sshd_config.
   
    exit 0
   #   注意:
   #   在循环中, ssh 可能会引起意想不到的异常行为. 
   #   根据 comp.unix 上的 shell 文档Usenet post ,
   #   ssh 继承了循环的标准输入.为了解决这个问题,
   #   使用 ssh 的 -n  或者 -f 选项.
   #   感谢 Jason Bechtel, 指出这点.
   #   scp
   #   安全拷贝, 在功能上与 rcp 很相似, 就是在 2 个不同的网络主机之间拷贝文件, 但是要通过鉴权的方式, 并且使用与 ssh 类似的安全层.




  

