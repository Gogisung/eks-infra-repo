module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "inno-cluster"
  cluster_version = "1.24"
  # vpc_id          = "<VPCID>"
  vpc_id = "vpc-0577c7178915a5bec"

  # private_subnets = ["<private-subnetID-1>", "<private-subnetID-2>"]
  # public_subnets  = ["<public-subnetID-1>", "<public-subnetID-2>"]
  private_subnets = ["subnet-06945fddbfd019daf", "subnet-0235025673ce9210c"]
  public_subnets  = ["subnet-0002de8206495b857", "subnet-07008dfadc777e256"]
}
