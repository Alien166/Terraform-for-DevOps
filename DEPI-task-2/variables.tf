variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string

}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet."
  type        = string
}

variable "region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "ami"
  type        = string

}

variable "instance_type" {
  description = "instance type"
  type        = string
}
