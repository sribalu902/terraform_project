output "vpc_id" {
    description = "The ID of the VPC"
    value       = aws_vpc.nbsl.id
  
}
output "public_subnet_id" {
    description = "The ID of the public subnet"
    value       = aws_subnet.nbsl_public_subnet.id
  
}