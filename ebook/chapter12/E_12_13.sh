#!/bin/bash 

  #  rnd.sh 输出一个10进制随机数

  #  Script by Stephane Chazelas.

   head -c4 /dev/urandom | od -N4 -tu4 | sed -ne '1s/.* //p'


   # 分析

   # ---

   # head:

   # -c4 选项将取得前4个字节

   # od:
   # -N4   选项将限制输出为4个字节
   # -tu4  选项将使用无符号的10进制格式来输出

   # sed:
   # -n 选项, 使用 "s" 命令与 "p" 标志组合的方式,
   # 将会只输出匹配的行.

   # 本脚本作者解释 'sed' 命令的行为如下.

   # head -c4 /dev/urandom | od -N4 -tu4 | sed -ne '1s/.* //p'
   # ----------------------------------> |
  
   # 假设一直处理到 "sed"命令时的输出--> |33 # 为 0000000 1198195154\n

# sed 命令开始读取字串: 0000000 1198195154\n.
# 这里它发现一个换行符,
#+ 所以 sed 准备处理第一行 (0000000 1198195154).
# sed 命令开始匹配它的 <range> 和 <action>. 第一个匹配的并且只有这一个匹配的:
#
#
#   range 1
#   action s/.* //p
# 因为行号在 range 中, 所以 sed 开始执行 action:
#+ 替换掉以空格结束的最长的字符串, 在这行中这个字符串是
# ("0000000 ") ,用空字符串(//)将这个匹配到的字串替换掉, 如果成功, 那就打印出结果
# ("p" 在这里是 "s" 命令的标志, 这与单独的 "p" 命令是不同的).

 # sed 命令现在开始继续读取输入. (注意在继续之前,
 #+ continuing, 如果没使用 -n 选项的话, sed 命令将再次
 #+ 将这行打印一遍).





 # 现在, sed 命令读取剩余的字符串, 并且找到文件的结尾.  
 # sed 命令开始处理第 2 行(这行也被标记为 '$' 因为这已经是最后一行).
 #  所以这行没被匹配到 <range> 中, 这样 sed 命令就结束了.

 # 这个 sed 命令的简短的解释是:
 # "在第一行中删除第一个空格左边全部的字符,
 #+ 然后打印出来."

 # 一个更好的来达到这个目的的方法是:
 #
sed -e 's/.* //;q'

# 这里, <range> 和 <action> 分别是 (也可以写成


# # # sed -e 's/.* //' -e q): range nothing (matches line) nothing (matches line) action s/.* // q (quit)
# 这里, sed 命令只会读取第一行的输入.
# 将会执行 2 个命令, 并且会在退出之前打印出(已经替换过的)这行(因为 "q" action),
#+ 因为没使用 "-n" 选项.


# =================================================================== #

 # 也可以使用如下一个更简单的语句来代替:
 # head -c4 /dev/urandom| od -An -tu4

 exit 0

