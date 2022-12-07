#autoloaded
variable "my_instance_type" {
  type = string
  default = "t2.micro"
  description = "My instance type"
}

variable "instance_tags" {
  #can leave  blank but good to specify
  type = object({ #object variable, like java object
    Name = string
    Foo = number
  })
}

variable "foobar" {
  type = list(number) #force the input
}