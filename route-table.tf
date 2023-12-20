# --Public Route Table--
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.two-tier-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "Public Route Table"
  }
}

# --Public route table association--
resource "aws_route_table_association" "public-rt1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public-rt2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public-rt3" {
  subnet_id      = aws_subnet.public-subnet3.id
  route_table_id = aws_route_table.public_rt.id
}