
variable "aws_region" {
  description = "Region Name"
  type        = string
  default     = "ap-south-1" 
}

variable "vpc_name" {
  description = "Name of the VPC to use for EC2"
  type        = string
  default     = "clusterVPC" 
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0fd05997b4dff7aac" 
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
