#!/bin/bash

#用for循环把创建的user遍历出来：

for user in user{1..5}
do 
	useradd $user

#这里的passwd --stdin 的意思：是非交互，直接输入密码
	echo "123" | passwd --stdin $user
	echo "The user useradd success !" 

done

#以下为批量删除用户
#原理基本上是一样的，只是一条命令不同而已。

for user in user{1..5}
do 
	userdel -r $user
	echo "The user deletc success !" 

done
