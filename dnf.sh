#!/bin/bash

USERID=$(id -u)
if [$USERID -ne 0 ]; then
echo "Error:: Please run this script with root previlage"
fi

dnf install mongodb -y
if [$? -ne 0 ];then
    echo "Error:: Installing mongodb server"
    else
    echo "Installing mongodb is success"
    fi

