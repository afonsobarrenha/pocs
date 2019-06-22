provider "aws" {
  version                 = "~> 2.14"
  region                  = "us-east-1"
}

resource "aws_instance" "backend-aws" {
  ami             = "ami-003f19e0e687de1cd" #debian-stretch
  instance_type   = "t2.nano"
  availability_zone = "us-east-1a"

  key_name        = "afonso@dell"
  
  security_groups = ["allow-ssh", "allow-server-access"]

  count = 4
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

resource "aws_security_group" "allow-server-access" {
  name          = "allow-server-access"
  description   = "Permite conexao aos servers"

  ingress {
    from_port   = 3000
    to_port     = 3000
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