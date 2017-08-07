resource "aws_ecs_task_definition" "task-definition" {
  family = "${var.stack_name}"
  container_definitions = "${file("files/task-definition.json")}"
}
