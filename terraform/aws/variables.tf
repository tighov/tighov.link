variable "domain_name" {
  type        = string
  description = "Name of the domain"
}
variable "region" {
  type        = string
  description = "The AWS region to create the bucket in."
}
variable "common_tags" {
  description = "Common tags you want applied to all components."
}
variable "stage_name" {
  type        = string
  description = "The stage name for the API Gateway deployment."

}
