variable "aws_region" {
  type        = string
  description = "Región de AWS donde se crea el bucket de state"
  default     = "us-east-1"
}

variable "state_bucket_name" {
  type        = string
  description = "Nombre del bucket S3 que guarda el terraform state remoto"
  default     = "gonzalo-terraform-state"
}
