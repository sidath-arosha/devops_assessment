# devops_assessment
for devops assessment

*** I have use my aws account aws_access_key and aws_secret_key for the testing from my side and desable the keys. ***

1. steps for build and run web application
- java 1.8 
- ./gradlew bootjar use for buld project
- upload to the relevent server
- start application using the command "nohup java -jar boot.jar &"
- this application give the out put as  "Hello, This is the Instance ID:i-0d9076f4f91f64db1 and Private IP Address 10.0.0.75"

2.server provisioning using terraform
- install terraform application
- write the terraform module to infrastrucure creation
- check out the project terraform
- run the below commands the root folder in terraform project
- "terraform init" to download the relevent version of dependencies accoding to provider
- terraform plan
- terraform apply

. you can connect to server using web.pem file in the "keyfile" folder after creation the web app

3.ansible configuration for nginx web server provisioning
- need to install python3.8 version,boto3 and botocore and ansible latest version
- check out the ansible project
- copy the web.pem file to /home folder
- access the dynamic inventory using aws_ec2.yml
- ansible-playbook -i ./inventory/aws_ec2.yml init.yml
- there are two roles for installing and config ngix and installing jdk
- After runing this provisioning the nginx web server with relevent configurations and install openjdk 8
