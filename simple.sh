#!/bin/bash
# 1	trim关键字

# 2	替换文件中的关键字

# 3	文件夹的名字

# 4	go.mod 更改模块名

# note: go version > 1.18

# 1
from=hack-browser-data
from1=HackBrowserData

To=hbd

# 1,2
sed -i "s/$from/$To/g" `grep -rlI $from ./cmd`
sed -i "s/$from1/$To/g" `grep -rlI $from1 ./cmd`

sed -i "s/$from/$To/g" `grep -rlI $from ./internal`
sed -i "s/$from1/$To/g" `grep -rlI $from1 ./internal`

# 3
mv "./cmd/$from/" "./cmd/$To/"

# 4
sed -i "s/$from/$To/g" ./go.mod

# 
echo "simplify done!"
