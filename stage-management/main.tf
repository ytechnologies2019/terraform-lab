provider "aws" {
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_KEY_ID
  region     = "us-east-2"  # Change to your desired AWS region
}
resource "aws_instance" "app_server" {
  ami                    = "ami-0ccabb5f82d4c9af5"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0164aa17c84146667"
  vpc_security_group_ids = ["sg-09ae8de0aa1f80a10"] ##arrary
  associate_public_ip_address = "true"
  key_name               = "home-key"  
  tags = {
    Name = "demo-tf-cloud"
  }
}
