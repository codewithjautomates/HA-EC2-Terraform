variable "region" {
  default = "ap-southeast-1"
}

variable "PRIV_KEYPAIR" {
  default = "aws_jerky_key"
}

variable "PUB_KEYPAIR" {
  default = "aws_jerky_key.pub"
}

variable "VPC_CIDR" {
  default = "172.21.0.0/16"
}

variable "AZ1" {
  default = "ap-southeast-1a"
}

variable "AZ2" {
  default = "ap-southeast-1b"
}

variable "AZ3" {
  default = "ap-southeast-1c"
}

variable "publicsubnet1-cidr" {
  default = "172.21.1.0/24"
}

variable "publicsubnet2-cidr" {
  default = "172.21.2.0/24"
}

variable "publicsubnet3-cidr" {
  default = "172.21.3.0/24"
}