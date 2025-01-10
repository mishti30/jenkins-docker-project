#<-------- Vpc main variables -----------------> 
variable "vpc_name" {}
variable "vpc_cidr" {}
variable "subnet_cidr" {
  type = list
}
variable "subner_az" {
  type = list
}

# #<------------- vpc terra variables ------------->

# variable "vpc_terra_name" {}
# variable "vpc_terra_cidr" {}
# variable "subnet_terra_cidr" {
#   type = list
# }
# variable "subner_terra_az" {
#   type = list
# }
