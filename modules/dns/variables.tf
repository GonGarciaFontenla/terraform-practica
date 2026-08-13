variable "domain_name" {
  type        = string
  description = "Nombre de la zona Route53 (hosted zone pública ya existente)"
}

variable "record_name" {
  type        = string
  description = "Subdominio del registro A del game server"
}

variable "instance_public_ip" {
  type        = string
  description = "IP pública a la que apunta el registro A"
}
