#!/bin/bash

if ` grep -q "wo" tmp/1.txt ` 
then
    echo "字符串wo存在！"
else
    echo "字符串wo不存在！"
fi