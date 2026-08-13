output "instance_public_ip" {
  description = "IP pública de la instancia EC2 del game server"
  value       = aws_instance.game_server.public_ip
}

output "ecr_repository_url" {
  description = "URL del repositorio ECR"
  value       = aws_ecr_repository.doom_game.repository_url
}
