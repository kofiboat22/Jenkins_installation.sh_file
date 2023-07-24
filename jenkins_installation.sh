#Ensure that your software packages are up to date 
sudo yum update –y

#Add the Jenkins repo using the following command:
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
Import a key file from Jenkins-CI to enable installation from the package:

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade

#Install Java (Amazon Linux 2):
sudo amazon-linux-extras install java-openjdk11 -y

#Install Java (Amazon Linux 2023):
sudo dnf install java-11-amazon-corretto -y

#Install Jenkins:
sudo yum install jenkins -y

#Enable the Jenkins service to start at boot:
sudo systemctl enable jenkins

#Start Jenkins as a service:
sudo systemctl start jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
