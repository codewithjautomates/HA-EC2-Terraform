# --Internet Gateway--
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.two-tier-vpc.id
  tags = {
    Name = "Internet Gateway"
  }
}