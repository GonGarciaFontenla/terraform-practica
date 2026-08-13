output "ecr_repository_url" {
  description = "URL del repositorio ECR"
  value       = aws_ecr_repository.doom-game.repository_url
}