resource aws_key_pair my_key{
    key_name="aman123"
    public_key=file("aman123.pub")
}
resource aws_default_vpc default{

}
resource aws_security_group my_secure {
    name="aman000"
    vpc_id=aws_default_vpc.default.id
    ingress{
        from_port=22
        to_port=22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }
    ingress{
        from_port=80
        to_port=80
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }
    tags ={
        name="automate_aman"
    }
}    
resource aws_instance my_new {
    for_each=tomap({
        aman1=var.aws_instance_type
        aman2=var.aws_instance_type
    })
    key_name=aws_key_pair.my_key.key_name
    security_groups=[aws_security_group.my_secure.name]
    instance_type=each.value
    root_block_device{
        volume_size=var.aws_root_storage
        volume_type="gp3"
    }
    ami=var.ec2_ami_id

    tags ={
        Name=each.key
    }
}