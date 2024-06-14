######################################################################################
# required variables
######################################################################################
variable "accounts" {
  description = "map of account(s) to be provisioined"

  type = map(object({
    email                      = string
    close_on_deletion          = optional(bool, false)
    create_govcloud            = optional(bool, false)
    iam_user_access_to_billing = optional(string, "ALLOW")
    parent_ou_name             = optional(string)
    role_name                  = optional(string)
    tags                       = optional(map(string), {})
  }))
}

######################################################################################
# optional variables
######################################################################################
variable "organizational_units" {
  default     = {}
  description = "map of ou(s) to be provisioned"

  type = map(object({
    parent_id = string
    tags      = optional(map(string), {})
  }))
}