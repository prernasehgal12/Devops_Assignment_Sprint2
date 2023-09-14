terraform {
  backend "s3" {
    bucket = "prerna-testbucket"
    key    = "prerna.tfstate"
    region = "ap-south-1"
  }
}