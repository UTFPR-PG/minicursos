#!/bin/sh

if [ `whoami` != root ]; then
    echo Please run this script as root. Not sudo. root.
    exit
fi

grep ^minicurso /etc/group > /dev/null
if [ $? == 1 ]
  then
    groupadd minicurso
fi

for login in $(cat calouros2013-2 | cut -d: -f1)
do
    grep ^$login /etc/passwd > /dev/null
    if [ $? == 1 ]
    then
        useradd -m -g minicurso $login
    fi
done

cat calouros2013-2 | chpasswd
