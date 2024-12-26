
output "vpc_id" {
  description = "my VPC id"
  value       = data.aws_vpc.selected.id
}

output "subnet_id" {
  description = "Subnet id"
  value       = data.aws_subnet.selected.id
}

output "instance_id" {
  description = "EC2 instance id"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "public ip"
  value       = aws_instance.example.public_ip
}
