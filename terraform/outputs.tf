
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "Private Subnet ID"
  value       = aws_subnet.private.id
}

output "web_server_public_ip" {
  description = "Web Server Public IP"
  value       = aws_eip.web_server.public_ip
}

output "web_server_private_ip" {
  description = "Web Server Private IP"
  value       = aws_instance.web_server.private_ip
}

output "ansible_controller_private_ip" {
  description = "Ansible Controller Private IP"
  value       = aws_instance.ansible_controller.private_ip
}

output "monitoring_server_private_ip" {
  description = "Monitoring Server Private IP"
  value       = aws_instance.monitoring_server.private_ip
}

output "ecr_repository_url" {
  description = "ECR Repository URL"
  value       = aws_ecr_repository.app_repo.repository_url
}

output "web_server_instance_id" {
  description = "Web Server Instance ID"
  value       = aws_instance.web_server.id
}

output "ansible_controller_instance_id" {
  description = "Ansible Controller Instance ID"
  value       = aws_instance.ansible_controller.id
}

output "monitoring_server_instance_id" {
  description = "Monitoring Server Instance ID"
  value       = aws_instance.monitoring_server.id
}