#aws region & instance & key details
variable "aws_region" {
    description = "region details"
    type = string
    default = "us-east-1"  
}
variable "instance_type" {
    description = "instance details"
    type = string
    default = "t3.micro"  
}
variable "instance_keypair" {
    description = "keypair details"
    type = string
    default = "terra_key"  
}
variable "instance_type_list" {
    description = "aws instances"
    type = list(string)
    default = [ "t3.micro" , "t3.small", "t3.large"]
}
variable "instance_map" {
    description = "instance type"
    type = map(string)
    default = {
      "dev" = "t3.micro"
      "test" = "t3.small"
      "prod" = "t3.large"
    }
  
}