resource "aws_lb" "network-lb" {
  name               = "network-hwell-lb-tf"
  internal           = false
  load_balancer_type = "network"
  subnets            = ["${aws_subnet.public.*.id}"]

  enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}
