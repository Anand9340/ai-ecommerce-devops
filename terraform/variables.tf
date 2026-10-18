variable "aws_region" {
  description = "AWS region for Nexvion infrastructure"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "nexvion"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
  default     = "vpc-0888fe51a91227563"
}
