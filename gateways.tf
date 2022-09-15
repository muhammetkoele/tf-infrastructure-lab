resource "aws_eip" "tf_eip" {
  vpc = true
}

resource "aws_internet_gateway" "tf_internet_gateway" {
  vpc_id = aws_vpc.tf_vpc.id 
  tags = {
    Name = "Internet gateway"
  }
}

resource "aws_nat_gateway" "tf_nat_gateway" {
  subnet_id = aws_subnet.tf_public_subnet_1.id
  allocation_id = aws_eip.tf_eip.id

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.tf_internet_gateway]

  tags = {
    Name = "NAT Gateway for private subnets"
  }
}
