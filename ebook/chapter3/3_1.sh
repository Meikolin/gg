#!/bin/bash



# This line is a comment

echo "A comment will follow."  # 注释在这里

#  注意 # 前面的留白

   echo " The # here does not begin a comment."

   echo ' The # here does not begin a comment.'

   echo The \# here does not begin a comment.

   echo  The # 这里开始是一个注释

   echo ${PATH#*:}  # 参数替换 ，不是注释

   echo $(( 2#101011)) # 数制转换，不是一个注释

   #  Thanks，S.C.




