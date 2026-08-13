data "aws_route53_zone" "main" {
  name         = "gonzalo.ownboarding.teratest.net"
  private_zone = false
}

data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}