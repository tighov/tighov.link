resource "aws_route53_zone" "aws-managed-tighov-link" {
  name          = "tighov.link"
  comment       = "Managed by Terraform Pipeline"
  force_destroy = false
}

resource "aws_route53_record" "aws-managed-root-a" {
  zone_id = aws_route53_zone.aws-managed-tighov-link.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.www_s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.www_s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "aws-managed-www-a" {
  zone_id = aws_route53_zone.aws-managed-tighov-link.zone_id
  name    = "www.${var.domain_name}"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.www_s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.www_s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_api_gateway_domain_name" "api_custom_domain" {
  domain_name     = "api.${var.domain_name}"
  certificate_arn = aws_acm_certificate.api_cert.arn
}

resource "aws_api_gateway_base_path_mapping" "api_mapping" {
  api_id      = aws_api_gateway_rest_api.contact_form_api.id
  stage_name  = aws_api_gateway_deployment.api_deployment.stage_name
  domain_name = aws_api_gateway_domain_name.api_custom_domain.domain_name
}

resource "aws_route53_record" "aws-managed-api" {
  zone_id = aws_route53_zone.aws-managed-tighov-link.zone_id
  name    = "api.${var.domain_name}"
  type    = "A"

  alias {
    name                   = aws_api_gateway_domain_name.api_custom_domain.cloudfront_domain_name
    zone_id                = aws_api_gateway_domain_name.api_custom_domain.cloudfront_zone_id
    evaluate_target_health = false
  }
}
