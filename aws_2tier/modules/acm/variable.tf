# Domain name for the ACM certificate (root domain)
variable "CERTIFICATE_DOMAIN_NAME" {
  description = "The primary domain name for the ACM certificate (e.g. webstacks.shop)"
  type        = string
}

# Your Route53 hosted zone name (must already exist in AWS)
variable "HOSTED_ZONE_NAME" {
  description = "The Route53 hosted zone name (e.g. webstacks.shop.)"
  type        = string
}

# Project name for tagging resources
variable "PROJECT_NAME" {
  description = "Project name to tag AWS resources"
  type        = string
}

# ALB domain name to use as CloudFront origin
variable "ALB_DOMAIN_NAME" {
  description = "Domain name of the Application Load Balancer (e.g. my-alb-123456.ap-south-1.elb.amazonaws.com)"
  type        = string
}

# Optional: additional domain (CNAME/alias) for CloudFront
variable "ADDITIONAL_DOMAIN_NAME" {
  description = "An additional domain alias for CloudFront (e.g. www.webstacks.shop)"
  type        = string
  default     = null
}
