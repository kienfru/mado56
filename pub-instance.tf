resource "aws_instance" "pub-server1" {
    ami = var.my_ami
    instance_type = var.type
    key_name = "demo"
    subnet_id = aws_subnet.pub-sub1.id
    security_groups = [ aws_security_group.kiensg1.id ]

    tags = {
      Name = "pub_server1"
    }
  
}
