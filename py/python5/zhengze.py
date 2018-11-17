#!/usr/bin/env python3


# 正则表达式

#        

#           匹配单个字符
# 记号           说 明
# .                     

#           匹配任意字符(换行符除外)
# [...x-y...]           

#           匹配字符组里的任意字符
# [^...x-y...]          

#           匹配不在字符组里的任意字符
# \d                    

#           匹配任意数字,与[0-9]同义
# \w                    

#           匹配任意数字字母字符,与[0-9a-zA-Z_]同义
# \s                    

#           匹配空白字符,与[ \r\v\f\t\n]同义


#     模式	    描述
#     ^	
#                 匹配字符串的开头
#     $	
#                 匹配字符串的末尾。
#     .	
#                 匹配任意字符，除了换行符，当re.DOTALL标记被指定时，
#                 则可以匹配包括换行符的任意字符。
#     [...]	    
#                 用来表示一组字符,单独列出：[amk] 
#                 匹配 'a'，'m'或'k'
#     [^...]	    
#                 不在[]中的字符：[^abc] 
#                 匹配除了a,b,c之外的字符。
#     re*	
#                 匹配0个或多个的表达式。
#     re+	
#                 匹配1个或多个的表达式。
#     re?	
#                 匹配0个或1个由前面的正则表达式定义的片段，非贪婪方式
#     re{ n}	
#                 匹配n个前面表达式。例如，"o{2}"不能匹配"Bob"中的"o"，
#                 但是能匹配"food"中的两个o。
#     re{ n,}	    
#                 精确匹配n个前面表达式。例如，"o{2,}"不能匹配"Bob"中的"o"，
#                 但能匹配"foooood"中的所有o。"o{1,}"等价于"o+"。"o{0,}"则
#                 等价于"o*"。
#     re{ n, m}	
#                 匹配 n 到 m 次由前面的正则表达式定义的片段，贪婪方式
#     a| b	
#                 匹配a或b
#     (re)	
#                 匹配括号内的表达式，也表示一个组
#     
#     (?imx)      正则表达式包含三种可选标志：i, m, 或 x 。只影响括号中的区域。
#     (?-imx)	    正则表达式关闭 i, m, 或 x 可选标志。只影响括号中的区域。
#     (?: re)  	类似 (...), 但是不表示一个组
#     (?imx: re)	在括号中使用i, m, 或 x 可选标志
#     (?-imx: re)	在括号中不使用i, m, 或 x 可选标志
#     (?#...)	        注释.
#     (?= re)       前向肯定界定符。如果所含正则表达式，以 ... 表示，在当前位置成功
#                   匹配时成功，否则失败。但一旦所含表达式已经尝试，
#                   匹配引擎根本没有提高；模式的剩余部分还要尝试界定符的右边。
#     
#     (?! re)	      前向否定界定符。与肯定界定符相反；当所含表达式不能在字符串
#                   当前位置匹配时成功。
#     (?> re)	
#                 匹配的独立模式，省去回溯。
#     \w	
#           匹配数字字母下划线
