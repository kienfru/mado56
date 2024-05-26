#creating pub-subnets for my vpc
resource "aws_subnet" "pub-sub" {
    vpc_id = aws_vpc.kienvpc.id
    cidr_block = var.cidr2
    availability_zone = var.zone1
tags = {
  Name="pub-sub"
}
  
}
  

#creating priv-subnet for my vpc
resource "aws_subnet" "priv-sub" {
    vpc_id = aws_vpc.kienvpc.id
    cidr_block = var.cidr3
    availability_zone = var.zone2

    tags = {
      Name= "priv-sub"
    }

  
}