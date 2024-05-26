# #creating NATgateway
  
# resource "aws_nat_gateway" "kien_NGW" {
#     subnet_id = aws_subnet.pub-sub.id
#     allocation_id = aws_eip.kien-eip.id

#     tags = {

#       Name = "kien-ngw"
#     }

  
# }

# #creating an elastic ip for NATgatway

# resource "aws_eip" "kien-eip" {
#     domain = "vpc"
#     depends_on = [ aws_nat_gateway.kien_NGW ]

#     tags = {
#       Name="kien-nat-gw-eip"

#     }
  
# }