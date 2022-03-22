# New Certificate Creation
resource "aws_acm_certificate" "clientdomain_com" {
  domain_name       = var.domain_name
  validation_method = "DNS"

  tags = {
    Environment = "production"
    Cleint      = var.Client
  }

  lifecycle {
    create_before_destroy = true
  }
}