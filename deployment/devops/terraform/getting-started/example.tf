provider "aws" {
  access_key = "AKIAJVMCNA7L2NO4VIGA"
  secret_key = "dRnebjsX3D/mU0kwlT5sGwF/9dGLPhPddQ37dK93"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}