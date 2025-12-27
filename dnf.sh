#!/bin/bash

USERID=$(id -u)
if [$USERID -ne 0 ]; then
echo "Error:: Please run this script with root previlage"
exit 1
fi

dnf install mongodb -y
if [$? -ne 0 ];then
    echo "Error:: Installing mongodb server"
    exit 1
    else
    echo "Installing mongodb is success"
    exit 1
    fi

dnf install nginx -y
if [$? -ne 0 ]; then
    echo ""Error:: Installing nginx server"
    exit 1
    else
    echo "Installing nginx is success"
    exit 1
    fi