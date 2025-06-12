variable "api_custom_domain_cloudfront_domain_name" {
  type = string
}
variable "api_custom_domain_cloudfront_zone_id" {
  type = string
}
variable "domain_name" {
  type = string
}
variable "rest_api" {
  type = any
}
variable "stage_name" {
  type = string
}
variable "lambda_role_arn" {
  type = string
}
