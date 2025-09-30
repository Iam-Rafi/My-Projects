provider "aws" {
  region = var.region
}

variable "region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type

  tags = {
    Name = "devops-ec2-demo"
  }
}
