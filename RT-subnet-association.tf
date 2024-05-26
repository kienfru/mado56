#creating subnet association for pub route table
resource "aws_route_table_association" "pub-rtb1" {
    subnet_id = aws_subnet.pub-sub.id
    route_table_id = aws_route_table.pub-rtb.id
  
}

#creating subnet association for priv-touttable
resource "aws_route_table_association" "priv-rtb1" {
subnet_id = aws_subnet.priv-sub.id
route_table_id = aws_route_table.priv-rtb.id
    }
  
