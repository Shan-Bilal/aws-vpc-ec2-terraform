output "vpc_id" {
  description = "Created VPC ID"
  value       = module.vpc.vpc_id
}

output "alb_endpoint" {
  description = "URL to access the load-balanced web servers"
  value       = "http://${module.compute.alb_dns_name}"
}
