variable "project_name" {
  description = "Project prefix for resource naming"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where compute resources will live"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnet IDs for the Application Load Balancer"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for the EC2 Auto Scaling Group"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}
