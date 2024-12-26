data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnets" "all_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
}

data "aws_subnet" "selected" {
  id = tolist(data.aws_subnets.all_subnets.ids)[0]
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = data.aws_subnet.selected.id
  key_name = "Instance_adi"
  root_block_device {
    volume_size = "50"
    volume_type = "gp3"
  }
  tags = {
    Name = "DataBlock_EC2"
  }
}
