output ec2_public_ip {
    value={for k,v in aws_instance.my_new : k=> v.public_ip}
}
output ec2_private_ip {
    value={for k , v in aws_instance.my_new : k => v.private_ip}
}
output ec2_public_dns {
    value=values(aws_instance.my_new)[*].public_dns
}