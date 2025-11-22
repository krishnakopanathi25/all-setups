#!/bin/bash
mkdir -p /opt && cd /opt
yum install -y java-17-amazon-corretto wget
wget https://download.sonatype.com/nexus/3/nexus-3.86.2-01-linux-x86_64.tar.gz
tar -zxvf nexus-3.86.2-01-linux-x86_64.tar.gz
useradd nexus
chown -R nexus:nexus nexus-3.86.2-01 sonatype-work
sudo -u nexus /opt/nexus-3.86.2-01/bin/nexus start
