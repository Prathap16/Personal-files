f1 () {
    user=$1
    Password=$2
    comment=$@
    useradd -c "${comment}" $user 2> /root/error.log
    A=$? 
    if [ A -eq 0 ]
        then
        echo "$user created successfully"
        passwd --stdin $user $Password  2> /root/error.log
        B=$?
        if [ B -ne 0 ]
            then
            echo "$user passwd is updated successfully"
            echo "+++++++++++++++++++++++++++++++++++++"
            echo "$user and password is updated successfully"
            echo "-------------------------------------"
            else
            echo "unable to update password check error in /root/error.log"
        fi
        else
        echo "unable to create user.check error in /root/error.log"
    fi
}
#calling function
f1 srh david captian of hyd
f1 kkr morgan caption of kkt

