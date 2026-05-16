aws-region = "us-east-1"

env = "dev"

cluster-name = "dev-eks-cluster"

vpc-cidr-block = "10.0.0.0/16"

vpc-name = "dev-vpc"

igw-name = "dev-igw"

pub-subnet-count = 2

pub-cidr-block = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

pub-availability-zone = [
  "us-east-1a",
  "us-east-1b"
]

pub-sub-name = "dev-public-subnet"

pri-subnet-count = 2

pri-cidr-block = [
  "10.0.3.0/24",
  "10.0.4.0/24"
]

pri-availability-zone = [
  "us-east-1a",
  "us-east-1b"
]

pri-sub-name = "dev-private-subnet"

public-rt-name = "dev-public-rt"

private-rt-name = "dev-private-rt"

eip-name = "dev-eip"

ngw-name = "dev-ngw"

eks-sg = "dev-eks-sg"



# =========================
# EKS
# =========================

is-eks-cluster-enabled = true

cluster-version = "1.30"

endpoint-private-access = true

endpoint-public-access = true

spot_instance_types = [
  "t3.medium"
]

desired_capacity_on_demand = 1
min_capacity_on_demand     = 1
max_capacity_on_demand     = 2

desired_capacity_spot = 1
min_capacity_spot     = 1
max_capacity_spot     = 2

addons = [
  {
    name    = "coredns"
    version = "v1.11.1-eksbuild.9"
  },
  {
    name    = "kube-proxy"
    version = "v1.30.0-eksbuild.3"
  },
  {
    name    = "vpc-cni"
    version = "v1.18.1-eksbuild.3"
  }
]
