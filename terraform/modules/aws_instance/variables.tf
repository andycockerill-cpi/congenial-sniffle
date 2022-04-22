variable "ami"                    {}
variable "instance_types"         {
  type = list(string)
  description = "an instance type to assign to server"
  default     = []
}
variable "vpc_security_group_ids" {
    description = "Description"
    type        = list(string)
    default     = []
}
variable subnets {
  type = list(string)
  description = "valid subnets to assign to server"
  default     = []
}
variable "runner_home"            {
  type = string
  default = "value"
}
variable "runner_user"            {
  type = string
  default = "value"
}
variable "extra_flags"            {
  type = string
  default = "value"
}

variable "gh_repo"      {
  type = string
  default = "value"
}
variable "runner_token" {
  type = string
  default = "value"
}

variable "aws_region" {
  type = string
  default = "value"
}