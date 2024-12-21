resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
 
}

# Here I mention public subnet
resource "aws_subnet" "public" {
  count = 2  //I need two 2 public subnet
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr[count.index]
  map_public_ip_on_launch = true
  
}

# Here I mention private subnet
resource "aws_subnet" "private" {
  count = 2 ////I need two 2 private subnet
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr[count.index]
  
}

# Public Route Table
# manage routing for resources within a VPC.
# how network traffic is directed within a VPC.
# route table to handle incoming and outgoing traffic
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
}


# Here I mention internet getway
# It allows communication between resources in the VPC and the internet
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
}

# Public Subnets with Public Route Table
resource "aws_route_table_association" "public" {
  count          = 2
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}

# Default Route for public subnet
# This route directs all outbound traffic (0.0.0.0/0) to the Internet Gateway, enabling internet communication.
resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}
