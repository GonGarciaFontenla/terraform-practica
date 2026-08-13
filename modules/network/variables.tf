variable "vpc_cidr_block" {
  type        = string
  description = "Bloque CIDR para la VPC"
}

variable "public_subnet_cidr_block" {
  type        = string
  description = "Bloque CIDR para la subnet pública"
}

variable "private_subnet_cidr_block" {
  type        = string
  description = "Bloque CIDR para la subnet privada"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone donde se crean las subnets"
}

variable "tags" {
  type        = map(string)
  description = "Tags comunes a fusionar en todos los recursos del módulo"
  default     = {}
}
