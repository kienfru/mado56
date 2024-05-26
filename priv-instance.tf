resource "aws_instance" "priv-server" {
    ami = var.ami2
    instance_type = var.ami2
    key_name = "demo"
    subnet_id = aws_subnet.priv-sub.id
    security_groups = [ aws_security_group.kiensg.id ]

    tags = {
      Name ="priv_server"
    }

  
}