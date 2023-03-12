variable "availability_zones" {
  description = "List of availability zones"
  type        = list(any)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "map_public_ip_on_launch" {
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false"
  type        = bool
  default     = false
}
variable "name" {
  description = "the name of your stack"
  type        = string
  default     = "sample-project"
}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list(any)
  default     = ["10.0.16.0/20", "10.0.48.0/20"]
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list(any)
  default     = ["10.0.0.0/20", "10.0.32.0/20"]
}

variable "region" {
  description = "the AWS region in which resources are created, you must set the availability_zones variable as well if you define this value to something other than the default"
  type        = string
  default     = "ap-south-1"
}
