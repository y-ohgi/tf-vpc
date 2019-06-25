terraform {}

module vpc {
  source = "git::https://github.com/y-ohgi/tf-vpc.git?ref=v1.1.0"

  name = "myapp"

  one_nat_gateway_per_az = true
}
