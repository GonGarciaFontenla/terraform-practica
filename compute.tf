resource "aws_ecr_repository" "pacman-game" {
  name                 = "my-game-repo"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_instance" "game_server" {
  ami                    = data.aws_ami.al2023.id
  instance_type          = var.ec2_instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.game_server_sg.id]
  user_data              = file("server.setup.sh")
  iam_instance_profile   = aws_iam_instance_profile.game_server_profile.name
}