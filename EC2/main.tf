resource "aws_instance" "example" {
  ami           = "ami-08bf489a05e916bbd"
  instance_type = var.instance_type
  subnet_id = "subnet-01d622d18fcaceb46"
  key_name = "adiserver"
  root_block_device {
    volume_size = "50"
    volume_type = "gp3"
  }
  tags = {
    Name = "tf-practice"
  }
}