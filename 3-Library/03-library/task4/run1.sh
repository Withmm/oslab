#!/bin/bash
# 先把add.c打包成一个动态库
gcc -fPIC -shared -Iinclude -o lib/libadd.so lib/add.c

# 再用main连接动态库

gcc -Iinclude -o main -Llib -ladd main.c 
## 勘误： 这里的 -Llib只能够让gcc找到libadd.so
# 	  系统加载还是需要环境变量

# 设置动态库的路径
export LD_LIBRARY_PATH=lib:$LD_LIBRARY_PATH

./main 3 5


