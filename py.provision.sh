#!/bin/bash
yum update
yum install vim tree yum-utils -y
yum groupinstall development -y
yum install https://centos7.iuscommunity.org/ius-release.rpm -y
yum install python36u -y
python3.6 -V
yum install python36u-pip -y
yum install python36u-devel -y
echo "Creating python3 alias for python3's REPL"
echo "'py'"
echo "alias py='/usr/bin/python3.6'" >> .bashrc
pip3 install virtualenv
sudo -u vagrant cp vimrc /home/vagrant/.vimrc
