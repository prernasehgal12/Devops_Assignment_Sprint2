resource "aws_s3_bucket" "Terraform" {
  count = 2
  bucket = var.bucket[count.index]

  tags = {
    Name        = var.name[0]
    Environment = var.environment[0]
    owner = var.owner[0]
    purpose = var.purpose[0]
  }
  
}


resource "aws_instance" "assignment" {

  for_each = toset(var.instance_name)
  ami           = var.ami[0]
  instance_type = var.instance_type[0]
  subnet_id = "subnet-0962069167a59d185"
  tags = {
    Name = each.value
    owner = var.owner[0]
  }
  volume_tags = {
    Name = each.value
    owner = var.owner[0]
  }
}




