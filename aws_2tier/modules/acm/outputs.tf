output "acm_certificate_arn" {
  description = "The ARN of the ACM certificate to be used by CloudFront"
  value       = aws_acm_certificate.cert.arn
}

output "acm_certificate_domain_name" {
  description = "The domain name of the ACM certificate"
  value       = aws_acm_certificate.cert.domain_name
}

