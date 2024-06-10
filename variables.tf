variable "region_name" {
  description = "Provide the region the name"
  type        = string
  default     = "us-east-1"
}
variable "env" {
  description = "Please provide the env"
  type        = string
  default     = "dev"
}

variable "vpc_cidr_block" {
  description = "Pls provide cidr range"
  type        = string
  default     = "172.16.0.0/16"
}

variable "public_subnets" {
  description = "Pls provide the public subnets cidr blocks"
  type        = list(string)
  default     = ["172.16.0.0/24", "172.16.2.0/24"]
}

variable "private_subnets" {
  description = "Pls provide the public subnets cidr blocks"
  type        = list(string)
  default     = ["172.16.1.0/24", "172.16.3.0/24"]
}

variable "public_az" {
  description = "Pls provide the az for public subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "private_az" {
  description = "Pls provide the az for private subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

