provider "aws" {
  version = "~> 1.32"
  region     = "us-east-1"
  shared_credentials_file = "/home/afonsobarrenha/.aws/credentials"
}

resource "aws_instance" "positiva-mysql" {
  ami             = "ami-b374d5a5"
  instance_type   = "t2.micro"
  key_name        = "lab-key"
  
  security_groups = [
    "allow-ssh"
  ]

  # Tells Terraform that this EC2 instance must be created only after the
  # S3 bucket has been created.
  #  depends_on = ["aws_s3_bucket.example"]
}

#resource "aws_eip" "ip" {
#  instance = "${aws_instance.example.id}"
#}

# New resource for the S3 bucket our application will use.
#resource "aws_s3_bucket" "example" {
  # NOTE: S3 bucket names must be unique across _all_ AWS accounts, so
  # this name must be changed before applying this example to avoid naming
  # conflicts.
#  bucket = "afonsobarrenha-terraform-getting-started-guide"
#  acl    = "private"
#}

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