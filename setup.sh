#!/bin/bash

#setup docker on CentOS
yum update -y
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl start docker


#setup docker on RPi


#setup API Web Services

    #create the folder structure
    mkdir -p /var/www/clipi
    #/App is for views and blue prints
    mkdir -p /var/www/clipi/app
    #static contains assets (images, CSS, JavaScript)
    mkdir -p /var/www/clipi/app/static
    #templates contains HTML templates
    mkdir -p /var/www/clipi/app/templates

    ##TODO: Copy or Extract Files##




