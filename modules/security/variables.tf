variable "vpc_id" {
  type        = string
  description = "ID de la VPC donde se crea el security group"
}

variable "tags" {
  type        = map(string)
  description = "Tags comunes a fusionar en todos los recursos del módulo"
  default     = {}
}
