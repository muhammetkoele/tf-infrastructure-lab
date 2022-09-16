resource "aws_subnet" "tf_public_subnet_1" {
  vpc_id = aws_vpc.tf_vpc.id 
  cidr_block = "192.168.1.0/24"
  availability_zone = "eu-central-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 1"
  }
}

resource "aws_subnet" "tf_public_subnet_2" {
  vpc_id = aws_vpc.tf_vpc.id 
  cidr_block = "192.168.2.0/24"
  availability_zone = "eu-central-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 2"
  }
}

resource "aws_subnet" "tf_public_subnet_3" {
  vpc_id = aws_vpc.tf_vpc.id 
  cidr_block = "192.168.3.0/24"
  availability_zone = "eu-central-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public Subnet 3"
  }
}


resource "aws_subnet" "tf_private_subnet_1" {
  vpc_id = aws_vpc.tf_vpc.id 
  cidr_block = "192.168.11.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "Private Subnet 1"
  }
}

resource "aws_subnet" "tf_private_subnet_2" {
  vpc_id = aws_vpc.tf_vpc.id 
  cidr_block = "192.168.12.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "Private Subnet 2"
  }
}

resource "aws_subnet" "tf_private_subnet_3" {
  vpc_id = aws_vpc.tf_vpc.id 
  cidr_block = "192.168.13.0/24"
  availability_zone = "eu-central-1c"

  tags = {
    Name = "Private Subnet 3"
  }
}

