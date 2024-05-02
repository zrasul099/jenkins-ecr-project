
provider "aws" {
  region = "us-east-2"
}

resource "aws_ecr_repository" "my_repository" {
  name = "jenkins-ecr-project"
}