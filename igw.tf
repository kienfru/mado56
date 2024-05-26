#creating an igw for my vpc
resource "aws_internet_gateway" "kienigw" {
    vpc_id = aws_vpc.kienvpc.id
    tags = {
      Name = "kienigw"
    }

  
}