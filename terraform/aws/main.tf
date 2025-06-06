module "contact_form" {
  source = "./modules/contact-form"

  api_custom_domain_name                   = aws_api_gateway_domain_name.api_custom_domain.domain_name
  api_custom_domain_cloudfront_domain_name = aws_api_gateway_domain_name.api_custom_domain.cloudfront_domain_name
  api_custom_domain_cloudfront_zone_id     = aws_api_gateway_domain_name.api_custom_domain.cloudfront_zone_id
  domain_name                              = var.domain_name
}
