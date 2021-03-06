#!/bin/bash


   # nested-loop.sh : 嵌套的"for" 循环

   outer=1     # 设置外部循环计数

   # 开始外部循环


   for a in `seq 5`

   do 

      echo "Pass $outer in outer loop"

      echo  "-----------------------"

      inner=1        #  重设内部循环的计数

      #  ===================================================
 
      #  开始内部的循环计数

      for b in `seq 5`

      do 
          echo "Pass $inner in inner loop."

          let "inner  += 1"

      done

      # 内部循环结束

      # ===================================================

      let "outer += 1"     # 增加外部循环的计数

      echo                 # 每次外部循环之间的间隔

   done  

   # 外部循环结束

   exit 0
   
