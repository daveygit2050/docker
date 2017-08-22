variable "aws_profile" {
  default = "rxplatformrefresh"
}
variable "region" {
  default = "eu-west-1"
}
variable "stack_name" {
  default = "dave-ecs-test-windows"
}
variable "cluster_instance_count" {
  default = 1
}
variable "service_task_count" {
  default = 1
}
