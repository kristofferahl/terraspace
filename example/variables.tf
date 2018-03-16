variable "region" {
  default = "The region do create resources in"
}

variable "instance_ami" {
  description = "The ami of the instance"
}

variable "instance_type" {
  description = "The instance type to use"
  default = "t2.micro"
}
