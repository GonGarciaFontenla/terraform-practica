output "security_group_id" {
  description = "ID del security group del game server"
  value       = aws_security_group.game_server_sg.id
}

output "instance_profile_name" {
  description = "Nombre del instance profile IAM del game server"
  value       = aws_iam_instance_profile.game_server_profile.name
}
