variable "aws_region" {
  type        = string
  description = "Región de AWS donde se despliega el entorno"
  default     = "us-east-1"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone donde se crean las subnets"
  default     = "us-east-1a"
}

variable "vpc_cidr_block" {
  type        = string
  description = "Bloque CIDR para la VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "Bloque CIDR para la subnet pública"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "Bloque CIDR para la subnet privada"
  default     = "10.0.2.0/24"
}

variable "ec2_instance_type" {
  type        = string
  description = "Tipo de instancia EC2 del game server"
  default     = "t3.micro"
}

variable "ecr_repository_name" {
  type        = string
  description = "Nombre del repositorio ECR de la imagen del juego"
  default     = "my-game-repo"
}

variable "domain_name" {
  type        = string
  description = "Nombre de la hosted zone Route53 pública ya existente"
  default     = "gonzalo.ownboarding.teratest.net"
}

variable "dns_record_name" {
  type        = string
  description = "Subdominio del registro A del game server"
  default     = "doom"
}

variable "tags" {
  type        = map(string)
  description = "Tags comunes fusionados en todos los recursos del entorno"
  default = {
    Project     = "doom-game-server"
    Environment = "lab"
    ManagedBy   = "terraform"
  }
}
