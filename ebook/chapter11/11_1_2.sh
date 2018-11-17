#!/bin/bash 


#    declare, typeset
#     
#    declare 和 typeset 命令被用来指定或限制变量的属性.

#    readonly 与 declare -r 作用相同,设置变量的只读属性,也可以认为是设置常量.设置了这种属性之后 如果你还要修改它,那么你将得到一个错误消息.这种情况与 C 语言中的 const 常量类型的情况是相同的.

 
#    getopts

#    可以说这是分析传递到脚本的命令行参数的最强力工具.这个命令与 getopt 外部命令,和C 语言中的库函数 getopt 的作用是相同的.它允许传递和连接多个选项[2]到脚本中,并能分配多个参数到脚本中. 

#   getopts 结构使用两个隐含变量.$OPTIND 是参数指针(选项索引),和$OPTARG(选项参数)(可选的)可以在选项后边附加一个参数.在声明标签中,选项名后边的冒号用来提示 这个选项名已经分配了一个参数.

#   getopts 结构通常都组成一组放在一个 while 循环中,循环过程中每次处理一个选项和参数, 然后增加隐含变量$OPTIND 的值,再进行下一次的处理.    


#   注意: 1.通过命令行传递到脚本中的参数前边必须加上一个减号(-).这是一个前缀,这样getopts 命令将会认为这个参数是一个选项.事实上,getopts 不会处理不带"-"前缀的参数,如果第一个参数就没有"-",那么将结束选项的处理.

#    2.使用 getopts 的 while 循环模版还是与标准的 while 循环模版有些不同.没有标准 while 循环中的[]判断条件.


#    3.getopts 结构将会取代 getopt 外部命令.
