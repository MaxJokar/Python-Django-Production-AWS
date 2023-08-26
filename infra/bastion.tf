# to create a  ec2 : in AWS , 
# to fetch something from  aws we need data 
# when we want to create  we use  resource 
# in instance , name server 

#  by below code we can get the AWS instance 
data "aws_ami" "amazon_linux" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.*-86_64-gp2"]
  }
  owners = ["amazon"]

}



resource "aws_insatnce" "bastion" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name      = var.bastion_key_name


  tegs = merge(
    local.common_tags,
    tomap({ "Name" = "${local.prefix}-bastion" })
  )
}






 