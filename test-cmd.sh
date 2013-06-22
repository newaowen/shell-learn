#!/bin/bash
# @zhanqu
# 2013-01-08 
# usage: ²âÊÔtestÃüÁî¹¦ÄÜ
self_file=`readlink -m $0`

function run_test() {
    cmd=$1
    result=`$1`
    echo "$cmd result: $result"
}

run_test "test -e $self_file"
run_test "test -f $self_file"
run_test "test -d $self_file"

run_test "test -r $self_file"
run_test "test -w $self_file"
run_test "test -x $self_file"

a=5
b=9

run_test("test $a -eq $b")
echo test $a -ne $b
echo test $a -gt $b
echo test $a -lt $b

str1="abc"
str2=""
echo test -z str1
echo test -n str2


