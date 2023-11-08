resource "aws_lb" "mainlb" {
  name               = "main-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.alb_security_group_id]
  subnets            = var.lb_subnet_ids
  enable_deletion_protection = false

  tags = {
    Name = "main-application-load-balancer"
  }
}

resource "aws_lb_target_group" "tg" {
  name     = "main-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    path                = "/"
    protocol            = "HTTPS"
    matcher             = "200"
    interval            = 30
  }

  tags = {
    Name = "main-target-group"
  }
}

resource "aws_lb_target_group_attachment" "tga" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = var.ec2_instance_id
  port             = 80
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.mainlb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}


#resource "aws_lb_target_group" "tghttps" {
#  name     = "main-tghttps"
#  port     = 443
#  protocol = "HTTPS"
#  vpc_id   = var.vpc_id

#  health_check {
#    healthy_threshold   = 2
#    unhealthy_threshold = 2
#    timeout             = 3
#    path                = "/"
#    protocol            = "HTTPS"
#    matcher             = "200"
#    interval            = 30
#  }

#  tags = {
#    Name = "main-target-group-https"
#  }
#}

#resource "aws_lb_listener" "front_end_http" {
#  load_balancer_arn = aws_lb.mainlb.arn
#  port              = "443"
#  protocol          = "HTTPS"

#  default_action {
#    type             = "forward"
#    target_group_arn = aws_lb_target_group.tghttps.arn
#  }
#}