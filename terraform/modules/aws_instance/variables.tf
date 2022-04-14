variable "ami"                    {}
variable "instance_type"          {}
variable "iam_instance_profile"   {}
variable "vpc_security_group_ids" {
    description = "Description"
    type        = list(string)
    default     = []
}
variable subnets {
  type = list(string)
  description = "valid subnets to assign to server"
  default     = ["subnet-043d3e6e6af5cf5dd","subnet-0b8eb2718059ffa6f","subnet-0d3ff0362c8fab2ba"]
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