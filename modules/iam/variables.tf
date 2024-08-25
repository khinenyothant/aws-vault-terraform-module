variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "profile" {
  type    = string
  default = "default"
}

variable "user_name" {
  type    = string
  description = "The name of the IAM user"
}

variable "policy_name" {
  type    = string
  description = "The name of the IAM policy"
}

variable "policy_description" {
  type    = string
  description = "A description for the IAM policy"
}

variable "policy_actions" {
  type    = list(string)
  description = "List of actions allowed by the IAM policy"
}

variable "policy_resources" {
  type    = list(string)
  description = "List of resources the IAM policy applies to"
}
