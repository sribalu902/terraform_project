resource "aws_vpc" "nbsl" {
    cidr_block           = var.vpc_cidr 
    
    tags = {
        Name = var.vpc_name
    }
  
}

resource "aws_subnet" "nbsl_public_subnet" {
    vpc_id                  = aws_vpc.nbsl.id
    cidr_block              = var.public_subnet_cidr
    map_public_ip_on_launch = true
    availability_zone       = var.public_subnet_az

    tags = {
        Name = var.public_subnet_name
    }
  
}
resource "aws_internet_gateway" "nbsl_igw" {
    vpc_id = aws_vpc.nbsl.id

    tags = {
        Name = var.igw_name
    }
  
}
resource "aws_route_table" "nbsl_public_rt"{
    vpc_id = aws_vpc.nbsl.id
        route {
            cidr_block = "0.0.0.0/0"
            gateway_id = aws_internet_gateway.nbsl_igw.id
        }

    tags = {
        Name = var.public_rt_name
    }
}



resource "aws_route_table_association" "nsbl_rt_association" {
    subnet_id      = aws_subnet.nbsl_public_subnet.id
    route_table_id = aws_route_table.nbsl_public_rt.id
  
}