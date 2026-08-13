output "ecr_repository_url" {
  description = "URL del repositorio ECR"
  value       = aws_ecr_repository.doom-game.repository_url
}

output "game_url" {
  description = "URL completa del juego"
  value       = "http://${aws_route53_record.game_server.name}"
}

output "instance_public_ip" {
  description = "IP pública de la instancia EC2"
  value       = aws_instance.game_server.public_ip
}