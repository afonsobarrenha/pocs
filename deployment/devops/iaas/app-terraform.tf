provider "aws" {
  version = "~> 1.32"
  region     = "us-east-1"
  shared_credentials_file = "/home/afonsobarrenha/.aws/credentials"
}

resource "aws_instance" "app-bd" {
  ami             = "ami-0c54494f920b19106" #ubuntu14.04
  instance_type   = "t2.small"
  key_name        = "lab-key"
  
  security_groups = ["allow-ssh", "allow-bd-access"]

  tags {
    Name = "app-bd"
  }
}

#resource "aws_db_instance" "app-bd-rds" {
#  allocated_storage    = 10
#  storage_type         = "gp2"
#  engine               = "mysql"
#  engine_version       = "5.7"
#  instance_class       = "db.t2.micro"
#  name                 = "mydb"
#  username             = "foo"
#  password             = "foobarbaz"
#  parameter_group_name = "default.mysql5.7"
#  skip_final_snapshot  = true
#  tags {
#    Name = "app-bd-rds"
#  }
#}

resource "aws_instance" "app-server-1" {
  ami             = "ami-0c54494f920b19106" #ubuntu14.04
  instance_type   = "t2.micro"
  key_name        = "lab-key"
  
  security_groups = [
    "allow-ssh", 
    "allow-server-access"
  ]

  tags {
    Name = "app-server-1"
  }  
}

resource "aws_instance" "app-server-2" {
  ami             = "ami-0c54494f920b19106" #ubuntu14.04
  instance_type   = "t2.micro"
  key_name        = "lab-key"
  
  security_groups = [
    "allow-ssh", 
    "allow-server-access"
  ]

  tags {
    Name = "app-server-2"
  }  
}

resource "aws_elb" "bar" {
  name               = "app-elb"
  availability_zones = ["us-east-1a", "us-east-1b"]

  #access_logs {
  #  bucket        = "foo"
  #  bucket_prefix = "bar"
  #  interval      = 60
  #}

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
    interval            = 30
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