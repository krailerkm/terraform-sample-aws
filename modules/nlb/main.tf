resource "aws_lb" "nlb" {
  name               = "main-nlb"
  load_balancer_type = "network"
  subnets            = var.lb_subnet_ids
  tags = {
    Name = "main-nlb"
  }
}

resource "aws_lb_target_group" "nlb_tg" {
  name     = "nlb-tg"
  port     = 22
  protocol = "TCP"
  vpc_id   = var.vpc_id

  health_check {
    protocol = "TCP"
    port     = "22"
    interval = 30
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }
}

resource "aws_lb_listener" "nlb_listener" {
  load_balancer_arn = aws_lb.nlb.arn
  port              = 22
  protocol          = "TCP"

  default_action {
    type     = "forward"
    target_group_arn = aws_lb_target_group.nlb_tg.arn
  }
}

resource "aws_lb_target_group_attachment" "nlb_tga" {
  target_group_arn = aws_lb_target_group.nlb_tg.arn
  target_id        = var.ec2_instance_id
}