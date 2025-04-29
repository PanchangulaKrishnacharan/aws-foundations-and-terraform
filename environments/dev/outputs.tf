output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.infrastructure.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.infrastructure.public_subnet_id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = module.infrastructure.private_subnet_id
}

output "security_group_id" {
  description = "ID of the security group"
  value       = module.infrastructure.security_group_id
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.infrastructure.instance_id
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.infrastructure.instance_public_ip
}
