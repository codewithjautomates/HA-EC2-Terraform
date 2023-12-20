resource "aws_lb" "web_alb" {
  name = "my-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.webserver_sg.id]
  subnets = [aws_subnet.public-subnet1.id, aws_subnet.public-subnet2.id, aws_subnet.public-subnet3.id]
}


resource "aws_lb_listener" "my_lb_listener" {
  load_balancer_arn = aws_lb.web_alb.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.my_tg.arn
  }
}

resource "aws_lb_target_group" "my_tg" {
  name = "my-tg"
  target_type = "instance"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.two-tier-vpc.id
}

resource "aws_launch_template" "my_launch_template" {
  name = "my_launch_template"
  image_id = "ami-078c1149d8ad719a7"
  instance_type = "t2.micro"
  key_name = aws_key_pair.aws_jerky_key.key_name

  user_data = filebase64("init.sh")
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      volume_size = 8
      volume_type = "gp2"
    }
  }
  network_interfaces {
    associate_public_ip_address = true
    security_groups = [aws_security_group.webserver_sg.id]
  }
}