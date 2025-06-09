resource "aws_api_gateway_rest_api" "rest_api" {
  name        = "contact-form-api"
  description = "API Gateway for contact form"

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_resource" "rest_api_resource" {
  parent_id   = aws_api_gateway_rest_api.rest_api.root_resource_id
  path_part   = "contact-form"
  rest_api_id = aws_api_gateway_rest_api.rest_api.id
}
