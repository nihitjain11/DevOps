#!/bin/bash
sudo apt-get update 
sudo apt-get install openjdk-8-jdk -y
echo -en "\n\n ###################### Java version is ###################### "
java -version
echo "\n\n ############## Starting Jenkins Installation ####################\n\n"
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update 
sudo apt-get install jenkins=2.263.2 -y
# sudo usermod -a -G root jenkins
echo -en "\n ################# Starting Jenkins ##############################\n"
sudo systemctl start jenkins
echo -en "\n ################ Jenkins Service Status #################### \n"
sudo systemctl status jenkins 
#comment below lines if uploading on EC2 user-data
echo -en "\n\n ################## Jenkins Admin login password is #################### \n"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
