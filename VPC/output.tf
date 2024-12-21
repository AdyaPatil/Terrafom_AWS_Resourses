output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "The public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  description = "The private subnets"
  value       = aws_subnet.private[*].id
}




# After applying this requirement ith gives the following OUTPUT
# Outputs:
# private_subnets = [
#   "subnet-09ee83305a0112fc1",
#   "subnet-0999ce9f758a15805",
# ]


# public_subnets = [
#   "subnet-03bd1940726040c18",
#   "subnet-0c96d660732a590f8",
# ]


# vpc_id = "vpc-0d702fbbea23d7f16"