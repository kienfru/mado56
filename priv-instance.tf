resource "aws_instance" "priv-serer1" {
    ami = var.my_ami
    instance_type = var.type
    key_name = "demo"
    subnet_id = aws_subnet.priv-sub.id
    security_groups = [ aws_security_group.kiensg.id ]

    tags = {
      Name ="priv_server1"
    }

  
}
