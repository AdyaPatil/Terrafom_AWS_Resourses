variable "vpc_name" {
  description = "this is the name of my vpc"
  default     = "Terraform_VPC"
}

variable "vpc_cidr" {
  description = "Here I am set the cidr range for my vpc"
  default     = "20.0.0.0/16"   //2'32-16 = 2'16 =Total 65,536 IP Range
}
# cidr range between = 20.0.0.0 - 20.0.255.255

variable "public_subnet_cidr" {
  description = "Here I am set the cidr for two public subnet"
  default     = ["20.0.1.0/24", "20.0.2.0/24"]
}

variable "private_subnet_cidr" {
  description = "Here I am set the cidr for two private subnet"
  default     = ["20.0.3.0/24", "20.0.4.0/24"]
}


