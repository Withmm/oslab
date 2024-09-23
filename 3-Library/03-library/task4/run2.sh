#!/bin/bash

# 把add.c打包成一个静态的库

gcc -static -Iinclude -c lib/add.c -o lib/add.o
ar -rcs lib/libadd.a lib/add.o

# main使用静态库

gcc -Iinclude main.c -Llib -ladd -o main -static 

./main 3 5
