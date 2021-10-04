variable "win_ami" {
  default = "ami-09f2114fecbe506e2"
}
variable "region" {
  type    = string
  default = "us-east-1"
}
variable "tags" {
  type    = map(any)
default = { test-env-owner = "m.honcharevskyi" }
}
variable "instance_type1" {
  type    = string
  default = "t2.nano"
}
variable "network" {
  type    = string
  default = "vpc-596aa03e"
}
variable "subnet" {
  type    = string
  default = "subnet-7e3fd71a"
}

