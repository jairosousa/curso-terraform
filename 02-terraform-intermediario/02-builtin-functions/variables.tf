variable "env" {}

variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "aprendizado"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-038b3df3312ddf25d"

  validation {
    condition = length(var.instance_ami) > 4 && substr(var.instance_ami,0,4) == "ami-"
    error_message = "The instance_ami value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_type" {
  type        = object({
    dev = string
    prod = string
  })
  description = ""
  default     = {
    dev = "t2.micro"
    prod = "t2.micro"
  }
}

variable "instance_number" {
  type = object({
    dev = number
    prod = number
  })
  description = "Number of instances to create"
  default = {
    dev = 1
    prod = 3
  }
}