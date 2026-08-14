#!/bin/bash
yum update -y
yum install -y docker
systemctl start docker
systemctl enable docker

until docker info >/dev/null 2>&1; do sleep 1; done

aws ecr get-login-password --region us-east-1 | \
docker login --username AWS --password-stdin 585008043636.dkr.ecr.us-east-1.amazonaws.com
docker pull 585008043636.dkr.ecr.us-east-1.amazonaws.com/my-game-repo:latest
docker run -d -p 8080:80 585008043636.dkr.ecr.us-east-1.amazonaws.com/my-game-repo:latest