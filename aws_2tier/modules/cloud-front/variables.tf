variable "CERTIFICATE_DOMAIN_NAME"{}
variable "ALB_DOMAIN_NAME" {}
variable "ADDITIONAL_DOMAIN_NAME" {}
variable "PROJECT_NAME" {}
variable "acm_certificate_arn" {
  description = "ARN of the ACM certificate to use for CloudFront"
  type        = string
}
