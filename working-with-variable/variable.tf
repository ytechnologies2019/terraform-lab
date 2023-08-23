variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "variable-svc"
}

variable "keypair" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "home-key"
}

variable "securitygroup" {
  type        = list
  default     = [   "sg-09ae8de0aa1f80a10" , "sg-0f62dee9aaef0c112" ] 
}

variable "publicIP" {
    type      = bool
    default   = true
}

variable "subnet_id" {
    type = list 
    default = [ "subnet-0164aa17c84146667 " , "subnet-0e0e2185aaa60a677	"]
}

variable "image" {
    type    = string
    default = "ami-0ccabb5f82d4c9af5"
}

variable "size" {
    type = string
    default = "t2.micro"
}