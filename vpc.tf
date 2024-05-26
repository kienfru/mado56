#create a vpc
resource "aws_vpc" "kienvpc" {
    cidr_block = var.cidr1
    instance_tenancy = var.tenancy

    tags = {
      Name = "kienvpc"
    }
  
}