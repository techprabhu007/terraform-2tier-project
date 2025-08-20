terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "terraform-project-week"
    key            = "backend/root.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
