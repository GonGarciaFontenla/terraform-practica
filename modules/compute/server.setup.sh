#!/bin/bash
yum update -y
yum install -y docker amazon-ssm-agent
systemctl start docker
systemctl enable docker
systemctl start amazon-ssm-agent
systemctl enable amazon-ssm-agent
aws ecr get-login-password --region us-east-1 | \
docker login --username AWS --password-stdin 585008043636.dkr.ecr.us-east-1.amazonaws.com/my-game-repo
docker pull 585008043636.dkr.ecr.us-east-1.amazonaws.com/my-game-repo:latest
docker run -d -p 8080:8080 585008043636.dkr.ecr.us-east-1.amazonaws.com/my-game-repo:latest