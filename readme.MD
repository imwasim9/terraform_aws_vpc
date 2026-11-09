# Terraform AWS VPC

This module creates the following resources.
* VPC
* IGW
* 2 Public subnets in us-east-1a and us-east-1b AZ
* 2 Private subnets in us-east-1a and us-east-1b AZ
* 2 Database subnets in us-east-1a and us-east-1b AZ
* Public Route table
* Private Route table
* Database Route table
* EIP for NAT
* NAT Gateway in public subnet 1a az
* IGW route is added to public route table
* NAT gateway route to private and database route tables
* Route table association with subnets
* VPC to default VPC peering
* Public route table to default VPC route
* Default VPC main route table to created VPC route

### Inputs

* vpc_cidr - (Required). User must supply the CIDR for VPC.
* project_name - (Required). User must supply the project name.
* public_subnet_cidr - (Required). User must supply the public subnet cidr.
* private_subnet_cidr - (Required). User must supply the private subnet cidr.
* database_subnet_cidr - (Required). User must supply the database subnet cidr.
* environment - (Required). User must supply the environment.
* vpc_tags - (Required). User must supply the vpc_tags
* is_peering_required - (Required). User must supply whether peering is required