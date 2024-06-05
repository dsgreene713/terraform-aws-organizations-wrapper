######################################################################################
# required variables
######################################################################################
variable "accounts" {
  type = map(object({
    email                      = string
    close_on_deletion          = optional(bool, false)
    create_govcloud            = optional(bool, false)
    iam_user_access_to_billing = optional(string, "ALLOW")
    parent_id                  = optional(string)
    role_name                  = optional(string)
    tags                       = optional(map(string), {})
  }))
}

######################################################################################
# optional variables
######################################################################################
