provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "example" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  tags {
    Name = "${terraform.workspace}-vm"
  }
}
