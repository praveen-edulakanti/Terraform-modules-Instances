output "Environment" {
    value = var.environment
}

output "Region" {
    value = var.region
}

output "Project" {
    value = var.project
}

output "vpc_id" {
    value = module.networking.vpc_id
}

/*output "VPC_Details" {
    value = var.vpc
}*/

output "VPC_Name" {
    value = var.vpc.name
}

output "VPC_CIDR" {
    value = var.vpc.cidr_block
}

output "InternetGateway" {
    value = var.igw_name
}

output "internet_gateway_id" {
	value = module.networking.internet_gateway_id
}

output "public_subnet_ids" {
	value = module.networking.public_subnet_ids
}

output "private_subnet_ids" {
	value = module.networking.private_subnet_ids
} 

output "PublicSecurityGrpID" {
	value = module.security.public_securityGrp
} 

output "PrivateSecurityGrpID" {
	value = module.security.private_securityGrp
} 

