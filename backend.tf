# tfstate를 저장할 backend 설정
terraform {
  backend "s3" {
    # bucket  = "<tfstate-버킷명>"
    bucket = "gogoc-tfstate"
    key    = "terraform.state"
    region = "ap-northeast-2"
    # profile = "<프로파일명>"
    profile = "gogoc"
  }
}
