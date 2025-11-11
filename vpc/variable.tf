variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  
}
variable "vpc_name" {
  description = "The name of the VPC"
    type = string
 
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  
}
variable "public_subnet_az" {
  description = "The availability zone for the public subnet"
  type        = string
  
}
variable "public_subnet_name" {
  description = "The name of the public subnet"
  type = string
  
}
variable "igw_name" {
  description = "The name of the Internet Gateway"
    type = string   
}
variable "public_rt_name" {
  description = "The name of the public route table"
    type = string   
  
}