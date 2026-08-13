output "ecr_repository_url" {
  description = "URL del repositorio ECR"
  value       = aws_ecr_repository.doom-game.repository_url
}

output "game_url" {
  description = "URL completa del juego"
  value       = "http://${aws_route53_record.game_server.name}"
}