#!/bin/sh

# chpasswd nao funciona se nao for root.
if [ `whoami` != root ]; then
    echo Please run this script as root. Not sudo. root.
    exit
fi

# testa se o grupo ja existe
grep ^minicurso /etc/group > /dev/null
if [ $? == 1 ]
  then
    groupadd minicurso
fi

# pega no arquivo de entrada o nome:senha em cada linha
for login in $(cat "$1" | cut -d: -f1)
do
    # testa se usuario existe
    grep ^$login /etc/passwd > /dev/null
    if [ $? == 1 ]
    then
        useradd -m -g minicurso $login
        # descomenta o startxfce4 do .xinitrc criado automaticamente
        sed -i "s|^# \(exec startxfce4\)|\1|" /home/$login/.xinitrc
    fi
done

cat calouros2013-2 | chpasswd
