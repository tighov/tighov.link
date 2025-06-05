output "contact_form_api_id" {
  value = aws_api_gateway_rest_api.contact_form_api.id
}
output "contact_form_api_url" {
  value = aws_api_gateway_deployment.api_deployment.invoke_url
}
output "contact_form_api_stage" {
  value = aws_api_gateway_deployment.api_deployment.stage_name
}
