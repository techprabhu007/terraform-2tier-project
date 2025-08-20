output "KEY_NAME" {
  description = "The name of the EC2 key pair"
  value       = aws_key_pair.three-tier-key.key_name
}