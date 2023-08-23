terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami                    = "ami-0ccabb5f82d4c9af5"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0164aa17c84146667"
  vpc_security_group_ids = ["sg-09ae8de0aa1f80a10"] ##arrary
  associate_public_ip_address = "true"
  key_name               = "home-key"  
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
