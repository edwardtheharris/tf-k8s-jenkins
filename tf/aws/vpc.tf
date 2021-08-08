resource "aws_vpc" "jenkins" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "jenkins"
  }
}

resource "aws_subnet" "us-west-2a" {
    availability_zone = "us-west-2a"
    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "us-west-2a"
    }
}

resource "aws_subnet" "us-west-2b" {
    availability_zone = "us-west-2b"
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "us-west-2b"
    }
}

resource "aws_subnet" "us-west-2c" {
    availability_zone = "us-west-2c"
    cidr_block = "10.0.2.0/24"
    tags = {
        Name = "us-west-2c"
    }
}

resource "aws_subnet" "us-west-2d" {
    availability_zone = "us-west-2d"
    cidr_block = "10.0.3.0/24"
    tags = {
        Name = "us-west-2d"
    }
}
