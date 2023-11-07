resource "aws_vpc" "tvpc" {
  cidr_block = var.cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = "t-vpc"
  }
}

resource "aws_subnet" "public1_subnet" {
  vpc_id     = aws_vpc.tvpc.id
  cidr_block = var.public1_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = format("%s%s",var.aws_region,"a")
  tags = {
    Name = "t-public1-subnet"
  }
}

resource "aws_subnet" "public2_subnet" {
  vpc_id     = aws_vpc.tvpc.id
  cidr_block = var.public2_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = format("%s%s",var.aws_region,"b")
  tags = {
    Name = "t-public2-subnet"
  }
}

resource "aws_subnet" "private1_subnet" {
  vpc_id     = aws_vpc.tvpc.id
  cidr_block = var.private1_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = format("%s%s",var.aws_region,"a")
  tags = {
    Name = "t-private1-subnet"
  }
}

resource "aws_subnet" "private2_subnet" {
  vpc_id     = aws_vpc.tvpc.id
  cidr_block = var.private2_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = format("%s%s",var.aws_region,"b")
  tags = {
    Name = "t-private2-subnet"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.tvpc.id
  tags = {
    Name = "t-gateway"
  }
}

resource "aws_eip" "natip" {
  domain = "vpc" # This replaces the deprecated `vpc = true` argument
  tags = {
    Name = "t-natip"
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.natip.id
  subnet_id     = aws_subnet.public1_subnet.id
  depends_on    = [aws_subnet.public1_subnet,aws_eip.natip]

  tags = {
    Name = "t-nat-gateway"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.tvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  depends_on    = [aws_subnet.public1_subnet,aws_subnet.public2_subnet,aws_nat_gateway.nat_gateway]
  tags = {
    Name = "t-public-route-table"
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.tvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }
  depends_on    = [aws_subnet.private1_subnet,aws_subnet.private2_subnet,aws_nat_gateway.nat_gateway]
  tags = {
    Name = "t-private-route-table"
  }
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.public1_subnet.id
  route_table_id = aws_route_table.public_route_table.id
  depends_on    = [aws_subnet.public1_subnet,aws_route_table.public_route_table]
}

resource "aws_route_table_association" "public_b" {
  subnet_id      = aws_subnet.public2_subnet.id
  route_table_id = aws_route_table.public_route_table.id
  depends_on    = [aws_subnet.public2_subnet,aws_route_table.public_route_table]
}

resource "aws_route_table_association" "private_a" {
  subnet_id      = aws_subnet.private1_subnet.id
  route_table_id = aws_route_table.private_route_table.id
  depends_on    = [aws_subnet.private1_subnet,aws_route_table.private_route_table]
}

resource "aws_route_table_association" "private_b" {
  subnet_id      = aws_subnet.private2_subnet.id
  route_table_id = aws_route_table.private_route_table.id
  depends_on    = [aws_subnet.private2_subnet,aws_route_table.private_route_table]
}