variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "eu-west-1"
}
variable "stack_name" {
  default = "dave-ecs-test-windows"
}
variable "cluster_instance_count" {
  default = 0
}
