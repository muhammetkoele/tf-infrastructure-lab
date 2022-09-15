resource "aws_route_table" "tf_route_table" {
  vpc_id = aws_vpc.tf_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf_internet_gateway.id
  }

  tags = {
    Name = "Public Route Table"
  }
}

resource "aws_route_table_association" "tf_route_table_association_public_subnet_1" {
  subnet_id      = aws_subnet.tf_public_subnet_1.id 
  route_table_id = aws_route_table.tf_route_table.id
}

resource "aws_route_table_association" "tf_route_table_association_public_subnet_2" {
  subnet_id      = aws_subnet.tf_public_subnet_2.id 
  route_table_id = aws_route_table.tf_route_table.id
}

resource "aws_route_table_association" "tf_route_table_association_public_subnet_3" {
  subnet_id      = aws_subnet.tf_public_subnet_3.id 
  route_table_id = aws_route_table.tf_route_table.id
}

resource "aws_route_table" "tf_private_route_table" {
  vpc_id = aws_vpc.tf_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.tf_nat_gateway.id
  }

  tags = {
    Name = "Private Route Table"
  }
}


resource "aws_route_table_association" "tf_route_table_association_private_subnet_1" {
  subnet_id      = aws_subnet.tf_private_subnet_1.id 
  route_table_id = aws_route_table.tf_private_route_table.id
}

resource "aws_route_table_association" "tf_route_table_association_private_subnet_2" {
  subnet_id      = aws_subnet.tf_private_subnet_2.id 
  route_table_id = aws_route_table.tf_private_route_table.id
}

resource "aws_route_table_association" "tf_route_table_association_private_subnet_3" {
  subnet_id      = aws_subnet.tf_private_subnet_3.id 
  route_table_id = aws_route_table.tf_private_route_table.id
}
