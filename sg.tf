# --web tier security group ALB--
resource "aws_security_group" "webserver_sg" {
  name        = "webserver_sg"
  description = "allow http traffic from anywhere"
  vpc_id      = aws_vpc.two-tier-vpc.id

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "webserver_sg"
  }
}