region      = "ap-south-1"
environment = "QA"
project     = "DemoProject"
vpc = {
    name       = "QA_VPC"
    cidr_block = "10.100.0.0/16"
}
#Internet Gateway
igw_name = "IGW" 

#Elastic IP Address
EIPs = [ 
	{
	  name = "EIP1a"
	},
	{
	  name = "EIP1b"
	}	
]

#NAT Gateway
NATGateways = [ 
   	{
	  name = "NATGateway1a"
	},
	{
	  name = "NATGateway1b"
	}	
] 

public_subnets = [
	{
		name ="PublicSubnet1a"
		cidr_block = "10.100.1.0/24"
		availability_zone = "ap-south-1a"
		#map_public_ip_on_launch = true
	},
	{
        name ="PublicSubnet1b"	
		cidr_block = "10.100.2.0/24"
		availability_zone = "ap-south-1b"
		#map_public_ip_on_launch = true
	}
]

private_subnets = [
	{
	  name = "PrivateSubnet1a"
	  cidr_block = "10.100.3.0/24"
	  availability_zone = "ap-south-1a"
	  map_public_ip_on_launch = false
	},
	{
	  name = "PrivateSubnet1b"
	  cidr_block = "10.100.4.0/24"
	  availability_zone = "ap-south-1b"
	  map_public_ip_on_launch = false
	}
]

private_subnet_route_tables = [
    {
        name = "PrivateSubnetRT1"
    },
    {
        name = "PrivateSubnetRT2"
    }
]

public_subnet_route_tables = [
    {
        name = "PublicRT"
    }
]

PublicSecurityGrp_egress = [
	{
	  from_port       = 0
      to_port         = 0
      protocol        = "-1"
      cidr_blocks     = ["0.0.0.0/0"]
	}
]

PrivateSecurityGrp_egress = [
	{
	  from_port       = 0
      to_port         = 0
      protocol        = "-1"
      cidr_blocks     = ["0.0.0.0/0"]
	}
]


PublicInstances = [
	{
	 name = "PublicInstance1a"
	 ami = "ami-0123b531fc646552f" #Ubuntu Server 18.04 LTS (HVM)
	 availability_zone = "ap-south-1a"
	 instance_type = "t2.micro"
	 key_name = "terraform-demo"
	 associate_public_ip_address = true
	 user_data = "user-data-pub1.sh"
	
	},
	{
	  name = "PublicInstance1b"
	  ami = "ami-0123b531fc646552f" #Ubuntu Server 18.04 LTS (HVM)
	  availability_zone = "ap-south-1b"
	  instance_type = "t2.micro"
	  key_name = "terraform-demo"
	  associate_public_ip_address = true
	  user_data = "user-data-pub2.sh"
	}
]

PrivateInstances = [
	{
	  
	 name = "PrivateInstance1a"
	 ami = "ami-0123b531fc646552f" #Ubuntu Server 18.04 LTS (HVM)
	 availability_zone = "ap-south-1a"
	 instance_type = "t2.micro"
	 key_name = "terraform-demo"
	 associate_public_ip_address = false
	 user_data = "user-data-prv1.sh"
	
	},
	{
	  name = "PrivateInstance1b"
	  ami = "ami-0123b531fc646552f" #Ubuntu Server 18.04 LTS (HVM)
	  availability_zone = "ap-south-1b"
	  instance_type = "t2.micro"
	  key_name = "terraform-demo"
	  associate_public_ip_address = false
	  user_data = "user-data-prv2.sh"
	}
]