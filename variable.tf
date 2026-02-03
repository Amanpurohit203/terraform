variable "aws_instance_type" {
    default="t3.micro"
    type=string
}
variable "aws_root_storage"{
    default=8
    type=number
}
variable "ec2_ami_id" {
    default ="ami-03446a3af42c5e74e"
    type=string 

}

