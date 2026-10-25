output "web_instance_id" {
  description = "Web EC2 instance ID"
  value       = aws_instance.web.id
}

output "web_private_ip" {
  description = "Web EC2 private IP"
  value       = aws_instance.web.private_ip
}

output "web_public_ip" {
  description = "Web EC2 Elastic/Public IP"
  value       = aws_eip.web.public_ip
}

output "mongodb_instance_id" {
  description = "MongoDB EC2 instance ID"
  value       = aws_instance.mongodb.id
}

output "mongodb_private_ip" {
  description = "MongoDB EC2 private IP"
  value       = aws_instance.mongodb.private_ip
}
