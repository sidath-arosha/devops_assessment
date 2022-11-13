# devops_assessment
for devops assessment

1. steps for build and run web application
 java 1.8
 Gradle build ./gradlew bootjar
 start application using   bootjar nohup java -jar boot.jar &

2.server provisioning using terraform
 check out the project terraform
 run the below commands the root folder in terraform project
 terraform init
 terraform plan
 terraform apply

 you can use the web app server using web.pem file in the "keyfile" folder after creation the web app

3.ansible configuration for nginx web server provisioning
 check out the ansible project
 copy the web.pem file to /home folder that refer the ansible.cfg file
 access the dynamic inventory using aws_ec2.yml
 need to install python3.8 version,boto3 and botocore and ansible latest version
 ansible-playbook -i ./inventory/aws_ec2.yml init.yml
 After runing this provisioning the nginx web server with relevent configurations and install openjdk 8
