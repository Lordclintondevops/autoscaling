# Provider
variable "region" {
  type    = string
  default = "us-east-1"

}

# VPC
variable "cidrvpc" {
  type    = string
  default = "120.200.0.0/16"

}

variable "instance_tenancy" {
  type    = string
  default = "default"

}

variable "cidrins" {
  type    = string
  default = "0.0.0.0/0"

}

# Public Subnet
variable "cidrsub1" {
  type    = string
  default = "120.200.0.0/24"

}

variable "av1" {
  type    = string
  default = "us-east-1a"

}

# Private Subnet
variable "cidrsub2" {
  type    = string
  default = "120.200.1.0/24"

}

variable "av2" {
  type    = string
  default = "us-east-1b"

}

# Public Subnet
variable "cidrsub3" {
  type    = string
  default = "120.200.3.0/24"

}

variable "av3" {
  type    = string
  default = "us-east-1c"

}

# EC2 Instances
variable "ami" {
  type    = string
  default = "ami-04b70fa74e45c3917"

}

variable "type" {
  type    = string
  default = "t2.micro"

}

variable "key_name" {
  type    = string
  default = "clintontest"

}