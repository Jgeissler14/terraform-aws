variable "prefix" {
  description = "Object Name Prefix"
  type        = string
}

variable "tags" {
  description = "A map of tags to be applied to resources"
  type        = map(string)
}

variable "admin_users" {
  description = "Map of user names and their corresponding role ARNs"
  type        = map(string)
}
