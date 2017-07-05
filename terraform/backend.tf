terraform {
  backend "s3" {
    bucket = "rx-dave-terraform"
    key = "docker-ecs-test"
    region = "eu-west-1"
    profile = "rxplatformrefresh"
  }
}
