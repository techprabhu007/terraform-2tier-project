variable "REGION" {
  type        = string
  description = "AWS region to deploy resources"
}

variable "PROJECT_NAME" {
  type        = string
  description = "Project name prefix for tagging resources"
}

variable "VPC_CIDR" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "PUB_SUB_1_A_CIDR" {
  type        = string
  description = "CIDR for public subnet in AZ A"
}
variable "PUB_SUB_2_B_CIDR" {
  type        = string
  description = "CIDR for public subnet in AZ B"
}
variable "PRI_SUB_3_A_CIDR" {
  type        = string
  description = "CIDR for private subnet in AZ A"
}
variable "PRI_SUB_4_B_CIDR" {
  type        = string
  description = "CIDR for private subnet in AZ B"
}
variable "PRI_SUB_5_A_CIDR" {
  type        = string
  description = "CIDR for private subnet in AZ A (App Layer)"
}
variable "PRI_SUB_6_B_CIDR" {
  type        = string
  description = "CIDR for private subnet in AZ B (App Layer)"
}

variable "DB_USERNAME" {
  type        = string
  description = "Database master username"
  sensitive   = true
}

variable "DB_PASSWORD" {
  type        = string
  description = "Database master password"
  sensitive   = true
}

variable "CERTIFICATE_DOMAIN_NAME" {
  type        = string
  description = "Primary domain name for ACM certificate"
}

variable "ADDITIONAL_DOMAIN_NAME" {
  type        = string
  description = "Additional domain name for ACM certificate"
}
variable "HOSTED_ZONE_NAME" {
  type        = string
  description = "The Route53 hosted zone name"
}

variable "ALB_DOMAIN_NAME" {
  type        = string
  description = "Domain name for the ALB"
}
