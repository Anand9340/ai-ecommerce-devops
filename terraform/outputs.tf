output "aws_region" {
  description = "AWS region used by this project"
  value       = var.aws_region
}

output "project_name" {
  description = "Project name"
  value       = var.project_name
}

output "environment" {
  description = "Deployment environment"
  value       = var.environment
}

output "vpc_id" {
  description = "Existing VPC selected for the project"
  value       = var.vpc_id
}

output "existing_instance_id" {
  description = "Existing EC2 instance selected for the project"
  value       = var.existing_instance_id
}
