# --public subnet--

resource "aws_subnet" "public-subnet1" {
  vpc_id                  = aws_vpc.two-tier-vpc.id
  cidr_block              = var.publicsubnet1-cidr
  availability_zone       = var.AZ1
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 1"
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id                  = aws_vpc.two-tier-vpc.id
  cidr_block              = var.publicsubnet2-cidr
  availability_zone       = var.AZ2
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 2"
  }
}

resource "aws_subnet" "public-subnet3" {
  vpc_id            = aws_vpc.two-tier-vpc.id
  cidr_block        = var.publicsubnet3-cidr
  availability_zone = var.AZ3
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 3"
  }
}