Next steps:
1. build docker image from my dockerfile:

> docker build -t mysqldb github.com/VidmanN/MySQLDocker

NOTE: now I have issue "Get https://registry-1.docker.io/v2/: net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)"
on this step.

2. add the image "mysqldb" to my git
3. deploy my container to amazon with this instruction:
 https://aws.amazon.com/ru/getting-started/tutorials/deploy-docker-containers/ 
