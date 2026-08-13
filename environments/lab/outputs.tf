output "ecr_repository_url" {
  description = "URL del repositorio ECR"
  value       = module.compute.ecr_repository_url
}

output "game_url" {
  description = "URL completa del juego"
  value       = module.dns.game_url
}

output "instance_public_ip" {
  description = "IP pública de la instancia EC2"
  value       = module.compute.instance_public_ip
}
