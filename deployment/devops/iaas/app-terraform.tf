provider "aws" {
  version = "~> 1.32"
  region     = "us-east-1"
  shared_credentials_file = "/home/afonsobarrenha/.aws/credentials"
}

resource "aws_instance" "app-bd" {
  ami             = "ami-0c54494f920b19106" #ubuntu14.04
  instance_type   = "t2.micro"
  key_name        = "lab-key"
  
  security_groups = ["allow-ssh", "allow-bd-access"]

  tags {
    Name = "app-bd"
  }
}

/*
resource "aws_db_instance" "app-bd-rds" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  tags {
    Name = "app-bd-rds"
  }
}
*/

resource "aws_instance" "app-server" {
  ami             = "ami-0c54494f920b19106" #ubuntu14.04
  instance_type   = "t2.nano"
  availability_zone = "us-east-1a"

  key_name        = "lab-key"
  
  security_groups = ["allow-ssh", "allow-server-access"]

  tags {
    Name = "app-server"
  }  
}

/*
resource "aws_elb" "app-elb" {
  name               = "app-elb"
  availability_zones = ["us-east-1a", "us-east-1b"]
  listener {
    instance_port     = 9000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:9000/"
    interval            = 60
  }
  instances                   = ["${aws_instance.app-server-1.id}", "${aws_instance.app-server-2.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400
  tags {
    Name = "app-elb"
  }
}
*/

resource "aws_default_subnet" "app-us-east-1a" {
  availability_zone = "us-east-1a"

    tags {
        Name = "Default subnet for us-east-1a"
    }
}

resource "aws_default_subnet" "app-us-east-1b" {
  availability_zone = "us-east-1b"

    tags {
        Name = "Default subnet for us-east-1b"
    }
}

resource "aws_lb" "app-lb" {
  name               = "app-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.allow-lb-access.id}"]
  subnets            = ["${aws_default_subnet.app-us-east-1a.id}", "${aws_default_subnet.app-us-east-1b.id}"]

  enable_deletion_protection = false

  tags {
    Name = "app-lb"
  }
}

resource "aws_alb_target_group" "app-target-group-1" {  
  name     = "app-target-group-1"  
  port     = "9000"  
  protocol = "HTTP"  
  vpc_id   = "vpc-752a3810"   
  tags {    
    Name = "app-target-group-1"    
  }   
  
  stickiness {    
    type            = "lb_cookie"    
    cookie_duration = 1800    
    enabled         = "true"  
  }
     
  health_check {    
    healthy_threshold   = 3    
    unhealthy_threshold = 10    
    timeout             = 5    
    interval            = 10    
    path                = "/"    
    port                = "9000"  
  }
}

resource "aws_lb_listener" "app-lb-listener" {
  load_balancer_arn = "${aws_lb.app-lb.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = "${aws_alb_target_group.app-target-group-1.arn}"
  }
}

resource "aws_alb_listener_rule" "app-listener-rule-1" {
  depends_on   = ["aws_alb_target_group.app-target-group-1"]  
  listener_arn = "${aws_lb_listener.app-lb-listener.arn}"  
  #priority     = "${var.priority}"   
  action {    
    type             = "forward"    
    target_group_arn = "${aws_alb_target_group.app-target-group-1.id}"  
  }   
  condition {    
    field  = "path-pattern"    
    values = ["/*"]  
  }
}

/*
Autoscaling Attachment
resource "aws_autoscaling_attachment" "svc_asg_external2" {
  alb_target_group_arn   = "${aws_alb_target_group.alb_target_group.arn}"
  autoscaling_group_name = "${aws_autoscaling_group.svc_asg.id}"
}
*/

#Instance Attachment
resource "aws_alb_target_group_attachment" "app-alb-tg-attach" {
  target_group_arn = "${aws_alb_target_group.app-target-group-1.arn}"
  target_id        = "${aws_instance.app-server.id}"  
  port             = 9000
}

resource "aws_security_group" "allow-ssh" {
  name          = "allow-ssh"
  description   = "Permite SSH"

  ingress {
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
}

resource "aws_security_group" "allow-bd-access" {
  name          = "allow-bd-access"
  description   = "Permite conexao a base de dados"

  ingress {
    from_port   = 0
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow-server-access" {
  name          = "allow-server-access"
  description   = "Permite conexao aos servers"

  ingress {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow-lb-access" {
  name          = "allow-lb-access"
  description   = "Permite conexao ao Application Load Balancer"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}