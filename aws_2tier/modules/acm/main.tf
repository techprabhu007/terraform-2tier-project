# ACM certificate must be in us-east-1 for CloudFront
provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

resource "aws_acm_certificate" "cert" {
  provider          = aws.us_east_1
  domain_name       = var.CERTIFICATE_DOMAIN_NAME
  validation_method = "DNS"

  subject_alternative_names = [
    "*.${var.CERTIFICATE_DOMAIN_NAME}"
  ]

  lifecycle {
    create_before_destroy = true
  }
}
# Add this data block to lookup your Route 53 Hosted Zone
data "aws_route53_zone" "public-zone" {
  name         = var.HOSTED_ZONE_NAME # Use the variable passed into the module
  private_zone = false                # Specify that it's a public zone
}

# Create DNS validation record in Route53
resource "aws_route53_record" "cert_validation" {
  for_each = {
    for dvo in aws_acm_certificate.cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  zone_id = data.aws_route53_zone.public-zone.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = 60
  records = [each.value.record]
}

# Validate the certificate
resource "aws_acm_certificate_validation" "cert_validation" {
  provider        = aws.us_east_1
  certificate_arn = aws_acm_certificate.cert.arn
  validation_record_fqdns = [
    for record in aws_route53_record.cert_validation : record.fqdn
  ]
}


