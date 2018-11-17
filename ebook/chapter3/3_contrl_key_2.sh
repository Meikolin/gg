#!/bin/bash

################################EndScript#########################################
#    Ctl-Q

#    继续(等价于 XON 字符),这个继续的标准输入在一个终端里

#    Ctl-S

#    挂起(等价于 XOFF 字符),这个被挂起的 stdin 在一个终端里,用 Ctl-Q 恢复

#    Ctl-U

#    删除光标到行首的所有字符,在某些设置下,删除全行.

#    Ctl-V   当输入字符时,Ctl-V 允许插入控制字符.比如,下边 2 个例子是等价的

      #   echo -e '\x0a'
      #   echo <Ctl-V><Ctl-J>
      #   Ctl-V 在文本编辑器中十分有用,在 vim 中一样.

#    Ctl-W    删除当前光标到前边的最近一个空格之间的字符.
#             在某些设置下,删除到第一个非字母或数字的字符.

#    Ctl-Z    终止前台工作.





#    空白部分

#       分割命令或者是变量.包括空格,tab,空行,或任何它们的组合.
#       在一些特殊情况下,空白是不允许的,如变量赋值时,会引起语法错误.
#       空白行在脚本中没有效果.
#       "$IFS",对于某些命令输入的特殊变量分割域,默认使用的是空白.
#       如果想保留空白,使用引用.


#    注意事项:
#    [1]
#       shell 做大括号的命令扩展.但是命令本身需要对扩展的结果作处理.

#    [2]

#       例外:在 pipe 中的一个大括号中的代码段可能运行在一个子 shell 中.

#       ls | { read firstline; read secondline; }

#       # 错误,在打括号中的代码段,将运行到子 shell 中.

#       #+ 所以 ls 的输出将不能传递到代码块中.

#       echo "First line is $firstline; second line is $secondline"

#       # 不能工作
#       
#       # Thanks, S.C.

#       换行符也被认为是空白.这也解释了为什么一个空行也会被认为是空白.
