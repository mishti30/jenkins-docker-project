resource "aws_vpc" "main" {
  cidr_block =  var.vpc_cidr
  tags = {
    Name = "Terraform_jenkins"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block =  var.subnet_cidr[0]
  vpc_id = aws_vpc.main.id
  availability_zone = var.subner_az[0]
  tags = {
    Name = "Terraform_jenkins_subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  cidr_block =  var.subnet_cidr[1]
  vpc_id = aws_vpc.main.id
  availability_zone = var.subner_az[1]
  tags = {
    Name = "Terraform_jenkins_subnet2"
  }
}

resource "aws_subnet" "subnet3" {
  cidr_block =  var.subnet_cidr[2]
  vpc_id = aws_vpc.main.id
  availability_zone = var.subner_az[2]
  tags = {
    Name = "Terraform_jenkins_subnet3"
  }
}

resource "aws_subnet" "subnet4" {
  cidr_block =  var.subnet_cidr[3]
  vpc_id = aws_vpc.main.id
  availability_zone = var.subner_az[0]
  tags = {
    Name = "Terraform_jenkins_subnet4"
  }
}