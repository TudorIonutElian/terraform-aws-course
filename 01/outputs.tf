output "aws_ec2_ami_id" {
    description = "I will print ec2_ami_id"
    value = data.aws_ami.latest_linux_2.id
}