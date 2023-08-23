##Create Subnet
resource "aws_subnet" "demo-pub-subnet" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "10.0.100.0/24"

  tags = {
    Name = "demo-public-subnet"
  }
}

resource "aws_subnet" "demo-pri-subnet" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = "10.0.200.0/24"

  tags = {
    Name = "demo-private-subnet"
  }
}