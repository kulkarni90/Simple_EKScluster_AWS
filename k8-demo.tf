## Create VPC ##
resource "aws_vpc" "k8-vpc" {
  cidr_block           = "172.16.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "k8-vpc"
  }
}

## Create Subnets ##
resource "aws_subnet" "k8-subnet_1" {
  vpc_id     = aws_vpc.k8-vpc.id
  cidr_block = "172.16.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "k8-subnet_1"
  }
}

resource "aws_subnet" "k8-subnet_2" {
  vpc_id     = aws_vpc.k8-vpc.id
  cidr_block = "172.16.0.0/26"
  availability_zone = "ap-south-1b"


  tags = {
    Name = "k8-subnet_2"
  }
}



