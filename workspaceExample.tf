terraform {
        required_providers{

        aws ={
        source="hashicorp/aws"
        }
        }


}

provider "aws" {
region="ap-south-1"
}

resource "aws_instance" "myec2" {

        ami="this is first ami"
	instance_type=lookup(var.instanceType,terraform.workspace)

	tags={

	Name="workspace"
	}

}

