resource "aws_api_gateway_base_path_mapping" "api_mapping" {
  api_id      = var.rest_api.id
  stage_name  = aws_api_gateway_deployment.api_deployment.stage_name
  domain_name = var.api_custom_domain_name
}
