variable "instanceType" {
	type	=map
	default	={
		default	="t2.micro"
		development	="m4.large"
		production	="t3a.2xlarge"
	}
}
