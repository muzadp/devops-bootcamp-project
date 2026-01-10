# Replace 'yourname' with your actual name

terraform {
  backend "s3" {
    bucket = "devops-bootcamp-terraform-mujadp"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}
