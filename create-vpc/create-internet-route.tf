resource "aws_route_table" "demo-pub-route" {
  vpc_id = aws_vpc.demo-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-igw.id

  }
  

  tags = {
    Name = "demo-pub-route"
  }
}