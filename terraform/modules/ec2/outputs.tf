output "ec2_instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.ec2_instance.id
}

output "ec2_instance_public_ip" {
  description = "Public IP of the created EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}
