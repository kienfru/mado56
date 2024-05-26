#creating securitygrp
resource "aws_security_group" "kiensg1" {
    vpc_id = aws_vpc.kienvpc.id

    tags = {
      Name="kiensg1"
    }
    ingress {     #ingress meance incoming traffic
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"] #allow ssh from anywhere

    }
    ingress  {
        from_port= 8080
        to_port= 8080
        protocol ="tcp"   # SSH protocol is TCP
        cidr_blocks = [ "0.0.0.0/0" ]   # Allow SSH from anywhere
    }
    egress  {      #means outgoing traffic
        from_port = 0 
        to_port = 0
        protocol = "-1"   # -1 represents all protocols
        cidr_blocks = ["0.0.0.0/0"] #Allow All Outbound traffic
    }
  
}