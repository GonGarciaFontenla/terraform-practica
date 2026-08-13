output "state_bucket_name" {
  description = "Nombre del bucket S3 usado como backend remoto"
  value       = aws_s3_bucket.terraform_state.id
}

output "state_bucket_arn" {
  description = "ARN del bucket S3 usado como backend remoto"
  value       = aws_s3_bucket.terraform_state.arn
}
