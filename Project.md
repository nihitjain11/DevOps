# Test proj
container: dockerfile : nginx 
nnginx-service:ecs cluster
ALB ASG TG

VPC: 
1 priv (app) 
1 public (lb)



1. download code from: https://drive.google.com/open?id=15vQ7-utH7wBJzdAX3eDmO9ls35J5_sEQ
2. unzip files to a project folder
4. create a Dockfile inside project folder
``` dockerfile
FROM nginx:alpine
MAINTAINER Nihit
COPY . /usr/share/nginx/html
```
5. login to ECR
6. Run following:
```bash
$ docker build -t webs:v0.1 ./ 

$ docker run -itd -p 8085:80 webs #test build running on localhost:8085

$ docker tag webs:v.01 246212294438.dkr.ecr.us-east-1.amazonaws.com/webs:v.01 #set tag to refer to ECR repo

$ docker push 246212294438.dkr.ecr.us-east-1.amazonaws.com/webs:v0.1 #push image to ECR
```
