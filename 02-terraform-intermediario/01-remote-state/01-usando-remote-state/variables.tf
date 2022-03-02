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

variable "ami" {
  type        = string
  description = ""
  default     = "ami-038b3df3312ddf25d"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}