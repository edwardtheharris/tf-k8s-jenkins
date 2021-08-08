resource "aws_vpc" "jenkins" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "jenkins"
  }
}

resource "aws_subnet" "us-west-2a" {

}