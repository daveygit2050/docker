provider "aws" {
  profile = "${var.aws_profile}"
  region = "${var.region}"
}

resource "aws_ecs_cluster" "cluster" {
  name = "${var.stack_name}"
}

resource "aws_autoscaling_group" "cluster-asg" {
  name = "${var.stack_name}"
  max_size = "${var.cluster_instance_count}"
  min_size = "${var.cluster_instance_count}"
  launch_configuration = "${aws_launch_configuration.cluster-lc.name}"
  vpc_zone_identifier = ["subnet-06391c5f", "subnet-98b357fc"]
}

resource "aws_launch_configuration" "cluster-lc" {
  name_prefix = "${var.stack_name}"
  image_id = "ami-0d839d6b"
  instance_type = "t2.micro"
  iam_instance_profile = "${aws_iam_role.cluster-iam-role.name}"
  associate_public_ip_address = true
  user_data = "${file("userdata.txt")}"
  security_groups = ["${aws_security_group.cluster-security-group.id}"]
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_iam_role" "cluster-iam-role" {
  name = "${var.stack_name}-cluster"
  assume_role_policy = "${file("role-policy-cluster.json")}"
  description = "Allows the container host to register containers with the cluster"
}

resource "aws_iam_role_policy_attachment" "cluster-iam-role-policy-attachment" {
  role = "${aws_iam_role.cluster-iam-role.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}

resource "aws_iam_instance_profile" "cluster-iam-profile" {
  name = "${var.stack_name}-cluster"
  role = "${aws_iam_role.cluster-iam-role.name}"
}

resource "aws_security_group" "cluster-security-group" {
  name = "${var.stack_name}"
  description = "Controls access to/from the ECS cluster instances"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "6"
    cidr_blocks = ["92.3.216.110/32"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
