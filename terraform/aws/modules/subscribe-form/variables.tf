variable "api_custom_domain_name" {
  type = string
}
variable "api_custom_domain_cloudfront_domain_name" {
  type = string
}
variable "api_custom_domain_cloudfront_zone_id" {
  type = string
}
variable "domain_name" {
  type = string
}
variable "lambda_role_arn" {
  type        = string
  description = "ARN of the IAM role for Lambda functions"
}
variable "options_lambda_function" {
  type        = any
  description = "the Lambda function for options"

}
variable "rest_api" {
  type        = any
  description = "The REST API object"
}
variable "stage_name" {
  type        = string
  description = "The stage name for the API Gateway deployment."
}
