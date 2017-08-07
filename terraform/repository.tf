resource "aws_ecr_repository" "repository" {
  name = "${var.stack_name}"
}
