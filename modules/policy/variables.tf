variable "resource_group_name" {}
variable "location" {}
variable "definitions" {
  type = list(object({
    name        = string
    policy_rule = string
  }))
}

variable "assignments" {
  type = list(object({
    name         = string
    policy_name  = string
    display_name = string
  }))
}
