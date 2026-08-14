variable "vpc_cdir_block" {
  type        = string
  description = "Bloque cdir para vpc"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cdir_block" {
  type        = string
  description = "Bloque cdir para subnet publica"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cdir_block" {
  type        = string
  description = "Bloque cdir para subnet privada"
  default     = "10.0.2.0/24"
}

variable "ec2_instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}