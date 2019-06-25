tf-vpc
---


# About
<img src="http://github.com/y-ohgi/tf-vpc/master/docs/architecture.png" />

TerraformによるVPC構築用Module

# Example
```ruby
terraform {}

module vpc {
  source = "git::https://github.com/y-ohgi/tf-vpc.git?ref=v1.1.0"
  
  name = "myapp"
    
  one_nat_gateway_per_az = true
}
```

# Configs
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| azs | A list of availability zones in the region | list | `<list>` | no |
| cidr | The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden | string | `"10.0.0.0/16"` | no |
| enable\_dns | Should be true to enable DNS support in the Default VPC | string | `"true"` | no |
| name | Name to be used on all the resources as identifier | string | n/a | yes |
| one\_nat\_gateway\_per\_az | Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs`. | string | `"false"` | no |
| private\_subnets | A list of private subnets inside the VPC | list | `<list>` | no |
| public\_subnets | A list of public subnets inside the VPC | list | `<list>` | no |
| single\_nat\_gateway | Should be true if you want to provision a single shared NAT Gateway across all of your private networks | string | `"false"` | no |
| tags | A map of tags to add to all resources | map | `<map>` | no |


