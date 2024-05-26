#creatting route-tables for my vpc_subnet
resource "aws_route_table" "pub-rtb" {
    vpc_id = aws_vpc.kienvpc.id

    route  {
        cidr_block ="0.0.0.0/0"
        gateway_id = aws_internet_gateway.kienigw.id

    }
    tags = {
      Name ="pub-rt"
    }
}


#creating routetable for my priv_subnet
resource "aws_route_table" "priv-rtb" {
    vpc_id = aws_vpc.kienvpc.id

    tags = {
      Name ="priv-rt"
    }
  
}