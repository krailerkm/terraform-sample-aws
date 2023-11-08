resource "aws_security_group" "allow_web" {
  name        = "t-allow_web_traffic"
  description = "Allow web inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP from Any"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH from Any"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow_web"
  }
}

resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.ec2_subnet_id
  vpc_security_group_ids = [aws_security_group.allow_web.id]
  user_data              = var.user_data

  tags = {
    Name = "WebServer"
  }
}
