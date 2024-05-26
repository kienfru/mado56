resource "aws_instance" "pub-server" {
    ami = var.my_ami
    instance_type = var.type
    key_name = "clintontest"
    subnet_id = aws_subnet.pub-sub.id
    security_groups = [ aws_security_group.kiensg.id ]

    tags = {
      Name = "pub_server"
    }
  
}