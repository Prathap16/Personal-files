#!/bin/bash
fuc() {
        ssh $1 "cat /etc/passwd |grep rangi >> /dev/null;
        if [ $? -ne 0 ]
        then
        echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
        echo "creating user"
        useradd rangi --password "$(openssl passwd -1 "rangi")"
        passwd --expire rangi
        echo "created user rangi"
        else
        echo "user already exist"
        cat /etc/passwd |grep rangi
        mkdir /root/test/massive
        echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
        fi"
}

#validating the users file input
if [ $# -ne 1 ]
        then
        echo "provide arguments like file"
        else
                if [ -s $1 ]
                then
                #for loop to utirate user
                for i in $(cat $1);do
                fuc $i
                done
                else
                echo "users file is empty"
                fi
fi