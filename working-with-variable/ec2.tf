provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami                    = var.image
  instance_type          = var.size
  subnet_id              = var.subnet_id[0]
  vpc_security_group_ids = [var.securitygroup[0]]
  associate_public_ip_address = var.publicIP
  key_name               = var.keypair 
  tags = {
    Name = var.instance_name
  }
}

