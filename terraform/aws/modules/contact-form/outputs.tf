output "contact_form_api_id" {
  value = var.rest_api.id
}
output "contact_form_api_url" {
  value = aws_api_gateway_deployment.api_deployment.invoke_url
}
output "contact_form_api_stage" {
  value = var.stage_name
}
