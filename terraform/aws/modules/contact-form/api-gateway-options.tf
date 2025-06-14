resource "aws_api_gateway_method" "contact_form_options" {
  rest_api_id   = var.rest_api.id
  resource_id   = aws_api_gateway_resource.rest_api_resource.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "contact_form_options_lambda_integration" {
  http_method = aws_api_gateway_method.contact_form_options.http_method
  resource_id = aws_api_gateway_resource.rest_api_resource.id
  rest_api_id = var.rest_api.id

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.options_lambda_function.invoke_arn

  depends_on = [aws_lambda_function.options_lambda_function]
}

resource "aws_api_gateway_deployment" "cf_options_deployment" {
  rest_api_id = var.rest_api.id
  stage_name  = var.stage_name

  triggers = {
    redeployment = sha1(jsonencode([
      aws_api_gateway_resource.rest_api_resource.id,
      aws_api_gateway_method.contact_form_options.id,
      aws_api_gateway_integration.contact_form_options_lambda_integration.id,
    ]))
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [
    aws_api_gateway_integration.contact_form_options_lambda_integration,
  ]
}

resource "aws_lambda_permission" "options_apigw_permission" {
  statement_id  = "AllowExecutionFromAPIGatewayOptions"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.options_lambda_function.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.rest_api.execution_arn}/*/OPTIONS/*"
}

resource "aws_api_gateway_method_response" "options_response" {
  rest_api_id = var.rest_api.id
  resource_id = aws_api_gateway_resource.rest_api_resource.id
  http_method = aws_api_gateway_method.contact_form_options.http_method
  status_code = "200"

  response_models = {
    "application/json" = "Empty"
  }

  response_parameters = {
    "method.response.header.Access-Control-Allow-Origin"  = true
    "method.response.header.Access-Control-Allow-Methods" = true
    "method.response.header.Access-Control-Allow-Headers" = true
  }
}

resource "aws_api_gateway_integration_response" "options_integration_response" {
  rest_api_id = var.rest_api.id
  resource_id = aws_api_gateway_resource.rest_api_resource.id
  http_method = aws_api_gateway_method.contact_form_options.http_method
  status_code = aws_api_gateway_method_response.options_response.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Origin"  = "'https://www.${var.domain_name}'"
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS'"
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,access-control-allow-origin'"
  }

  depends_on = [aws_api_gateway_integration.contact_form_options_lambda_integration]

}
