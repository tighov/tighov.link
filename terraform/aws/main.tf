module "options_dynamic_origin" {
  source = "./modules/options-dynamic-origin"

  api_custom_domain_name                   = aws_api_gateway_domain_name.api_custom_domain.domain_name
  api_custom_domain_cloudfront_domain_name = aws_api_gateway_domain_name.api_custom_domain.cloudfront_domain_name
  api_custom_domain_cloudfront_zone_id     = aws_api_gateway_domain_name.api_custom_domain.cloudfront_zone_id
  domain_name                              = var.domain_name
  lambda_role_arn                          = aws_iam_role.lambda_role.arn
  stage_name                               = var.stage_name
}

module "contact_form" {
  source = "./modules/contact-form"

  rest_api                                 = aws_api_gateway_rest_api.rest_api
  api_custom_domain_name                   = aws_api_gateway_domain_name.api_custom_domain.domain_name
  api_custom_domain_cloudfront_domain_name = aws_api_gateway_domain_name.api_custom_domain.cloudfront_domain_name
  api_custom_domain_cloudfront_zone_id     = aws_api_gateway_domain_name.api_custom_domain.cloudfront_zone_id
  domain_name                              = var.domain_name
  lambda_role_arn                          = aws_iam_role.lambda_role.arn
  options_lambda_function                  = module.options_dynamic_origin.options_lambda_function
  stage_name                               = var.stage_name
}

module "subscribe_form" {
  source = "./modules/subscribe-form"

  rest_api                                 = aws_api_gateway_rest_api.rest_api
  api_custom_domain_name                   = aws_api_gateway_domain_name.api_custom_domain.domain_name
  api_custom_domain_cloudfront_domain_name = aws_api_gateway_domain_name.api_custom_domain.cloudfront_domain_name
  api_custom_domain_cloudfront_zone_id     = aws_api_gateway_domain_name.api_custom_domain.cloudfront_zone_id
  lambda_role_arn                          = aws_iam_role.lambda_role.arn
  domain_name                              = var.domain_name
  options_lambda_function                  = module.options_dynamic_origin.options_lambda_function
  stage_name                               = var.stage_name
}
