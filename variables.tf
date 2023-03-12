variable "name" {
  description = "the name of your stack"
  type        = string
}

variable "region" {
  description = "the AWS region in which resources are created, you must set the availability_zones variable as well if you define this value to something other than the default"
  type        = string
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list(any)

}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list(any)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(any)
}