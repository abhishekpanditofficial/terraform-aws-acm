output "record_name" {
  value = "${tolist(aws_acm_certificate.clientdomain_com.domain_validation_options)[0].resource_record_name}"
  description = "Domain Validation CNAME Record name"
}

output "record_value" {
  value = "${tolist(aws_acm_certificate.clientdomain_com.domain_validation_options)[0].resource_record_value}"
  description = "Domain Validation CNAME Record value"
}


output "ARN" {
    value = "${aws_acm_certificate.clientdomain_com.arn}"
    description = "ARN for Certificate"
}

output "domain_name" {
  value= "${aws_acm_certificate.clientdomain_com.domain_name}"
  description = "domain name for acm"
}