variable "ecr_repository_name" {
  type        = string
  description = "Nombre del repositorio ECR de la imagen del juego"
}

variable "instance_type" {
  type        = string
  description = "Tipo de instancia EC2 del game server"
}

variable "subnet_id" {
  type        = string
  description = "Subnet donde se lanza la instancia EC2"
}

variable "security_group_id" {
  type        = string
  description = "Security group a asociar a la instancia EC2"
}

variable "instance_profile_name" {
  type        = string
  description = "Instance profile IAM a asociar a la instancia EC2"
}

variable "tags" {
  type        = map(string)
  description = "Tags comunes a fusionar en todos los recursos del módulo"
  default     = {}
}
