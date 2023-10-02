# variable "aws_region" {
#   description = "The AWS region name"
#   type        = string
#   default     = "us-west-2"
# }

# variable "environment" {
#   description = "The environment for the workspaces. Valid values: 'STAGING' or 'PRODUCTION'"
#   type        = string
#   default = "STAGING"

#   validation {
#     condition = contains(["STAGING", "PRODUCTION"], upper(var.environment))
#     error_message = "The environment must be one of \"STAGING\" or \"PRODUCTION\"."
#   }
# }