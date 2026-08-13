output "game_url" {
  description = "URL completa del juego"
  value       = "http://${aws_route53_record.game_server.name}"
}
