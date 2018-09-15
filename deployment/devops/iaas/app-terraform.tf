provider "aws" {
  version = "~> 1.32"
  region     = "us-east-1"
  shared_credentials_file = "/home/afonsobarrenha/.aws/credentials"
}

resource "aws_instance" "app-bd" {
  ami             = "ami-0c54494f920b19106" #ubuntu14.04
  instance_type   = "t2.small"
  key_name        = "lab-key"
  
  security_groups = [ "allow-ssh", "allow-bd-access" ]

  tags {
    Name = "app-bd"
  }
}

resource "aws_instance" "app-server" {
  ami             = "ami-0c54494f920b19106" #ubuntu14.04
  instance_type   = "t2.micro"
  key_name        = "lab-key"
  
  security_groups = [
    "allow-ssh"
  ]

  tags {
    Name = "app-server"
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
    cidr_blocks = ["34.239.143.178/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}