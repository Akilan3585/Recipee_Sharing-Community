# =========================================
# Environment
# =========================================
env = "dev"

# =========================================
# VPC
# =========================================
vpc-cidr = "10.0.0.0/16"

public-subnet-cidr = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

private-subnet-cidr = [
  "10.0.3.0/24",
  "10.0.4.0/24"
]

availability-zones = [
  "us-east-1a",
  "us-east-1b"
]

# =========================================
# EKS Cluster
# =========================================
is-eks-cluster-enabled = true

cluster-name    = "dev-ap-medium-dev-eks"
cluster-version = "1.31"

endpoint-private-access = true
endpoint-public-access  = true

# =========================================
# Node Groups - On Demand
# =========================================
desired_capacity_on_demand = 1
min_capacity_on_demand     = 1
max_capacity_on_demand     = 2

ondemand_instance_types = [
  "t3.medium"
]

# =========================================
# Node Groups - Spot
# =========================================
desired_capacity_spot = 1
min_capacity_spot     = 1
max_capacity_spot     = 2

spot_instance_types = [
  "t3.medium"
]

# =========================================
# EKS Addons
# =========================================
addons = [
  {
    name    = "coredns"
    version = "v1.11.1-eksbuild.9"
  },
  {
    name    = "kube-proxy"
    version = "v1.31.0-eksbuild.5"
  },
  {
    name    = "vpc-cni"
    version = "v1.18.3-eksbuild.2"
  }
]

# =========================================
# Tags
# =========================================
tags = {
  Environment = "dev"
  Project     = "eks"
}
