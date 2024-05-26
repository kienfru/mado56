resource "aws_instance" "pub-server" {
    ami = var.ami1
    instance_type = var.type1
    key_name = "demo"
    subnet_id = aws_subnet.pub-sub.id
    security_groups = [ aws_security_group.kiensg.id ]

    tags = {
      Name = "pub_server"
    }
  
}