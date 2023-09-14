output "ami_id" {
  value = [for assignment in aws_instance.assignment : assignment.ami]
}