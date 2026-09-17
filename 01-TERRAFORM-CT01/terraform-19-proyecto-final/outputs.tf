output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.main.id
}

output "ec2_id" {
  description = "ID de la instancia EC2 pública"
  value       = aws_instance.ec2_publica.id
}

output "ec2_public_ip" {
  description = "IP pública de la instancia EC2, si existe"
  value       = try(aws_instance.ec2_publica.public_ip, null)
}

output "bucket_name" {
  description = "Nombre del bucket S3 creado"
  value       = aws_s3_bucket.proyecto.bucket
}
