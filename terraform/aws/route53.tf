
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
    name                   = aws_cloudfront_distribution.root_s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.root_s3_distribution.hosted_zone_id
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
