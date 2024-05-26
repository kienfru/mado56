# creating variables for provider region
variable "region" {
    type = string
    default = "us-east-1"
  
}
# create variable for VPC
 variable "cidr1" {
    type = string
    default = "20.0.0.0/16"
    
    }
    variable "tenancy" {
        type = string
        default = "default"
      
    }
    #creating variable for pub-subnets for my vpc
    variable "cidr2" {
        type = string
        default = "20.0.0.0/24"
      
    }
    #creating variable for pub availebility zone_A
    variable "zone1" {
        type = string
        default = "us-east-1a"
      
    }
    #creating variables for priv cidrblock
    variable "cidr3" {
        type = string
        default ="20.0.2.0/24"
      
    }
    #creating variable for priv availebility zone_B
    variable "zone2" {
        type = string
        default =  "us-east-1b"
      
    }
    #variable for pub instance
    variable "my_ami" {
        type = string
        default = "ami-04b70fa74e45c3917"
      
    }
    #variable for pub instance type
    variable "type" {
        type = string
        default = "t2.micro"
      
    }
      
    #creating variable for aws_s3_bucket
    variable "bucket" {
        type = string
        default ="kien-test-bucket"
      
    }
