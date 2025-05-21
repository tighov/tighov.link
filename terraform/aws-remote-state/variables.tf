variable "domain_name" {
  type        = string
  description = "Name of the domain"
  default     = "tighov.link"
}
variable "region" {
  type        = string
  default     = "us-east-1"
  description = "The AWS region to create the bucket in."
}
