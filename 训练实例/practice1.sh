#!/bin/bash
echo "请输入你的姓名:"
#read name
name=$1
money=$2
echo "您好，有$money的$name"
number=`shuf -i 1-10 -n 1`
while [[ 1 ]]
do
echo "请输入一个1-10之间的数字"
read guess
if [[ $guess -eq $number ]]; then
	echo "恭喜你猜对了！是否继续？ (y/n): "
	read choice
	if [[ $choice = "y" ]]; then
		continue
	elif [[ $choice = "n" ]]; then
		break
	fi
elif [[ $guess -lt $number ]]; then
	echo "猜小了"
elif [[ $guess -gt $number ]]; then
	echo "猜大了"
fi
done
