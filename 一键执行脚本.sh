#!/bin/bash

echo "Hello, World! 你好，世界!"

x="Hello"
y="World"

echo "$x$y" > 1.txt

x=1
y=2
z=`expr $x + $y`

echo "$z" >> 1.txt

mkdir tmp

./copy.sh 1.txt tmp/

if [ -e tmp/1.txt ]
then
    echo " 1.txt 文件存在！"
else
    echo " 1.txt 文件不存在！"
fi

if ` grep -q "wo" tmp/1.txt ` 
then
    echo "字符串wo存在！"
else
    echo "字符串wo不存在！"
fi