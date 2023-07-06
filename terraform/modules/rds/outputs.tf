output "rds_instance_id" {
  description = "ID of the created RDS instance"
  value       = aws_db_instance.rds_instance.id
}

output "rds_instance_endpoint" {
  description = "Endpoint of the created RDS instance"
  value       = aws_db_instance.rds_instance.endpoint
}
