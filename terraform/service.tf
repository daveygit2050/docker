resource "aws_ecs_service" "service" {
  name = "${var.stack_name}"
  cluster = "${aws_ecs_cluster.cluster.id}"
  task_definition = "${aws_ecs_task_definition.task-definition.arn}"
  desired_count = "${var.service_task_count}"
}
