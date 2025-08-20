# In ../modules/alb/outputs.tf

output "TG_ARN" {
  value = aws_lb_target_group.alb_target_group.arn
}

output "ALB_DNS_NAME" {
  value = aws_lb.application_load_balancer.dns_name
}
# In ../modules/alb/outputs.tf

output "alb_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.application_load_balancer.dns_name # <-- Corrected line
}

