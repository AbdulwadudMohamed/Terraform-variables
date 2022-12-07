#auto loaded
my_instance_type = "t2.micro"
instance_tags = {
  Foo = 1
  Name = "value"
}

foobar = [1, 4, 3]


#You can add dev.tfvars file + this file by using the command -  terraform apply -var-file dev.tfvars
#You can declare the variable in the terminal with the command - terraform apply -var="my_instance_type=t2.micro"

#Enviornment variables commmand - TF_VAR_my_instance_type="t2.micro" terraform apply (however would be overridded declaration at the top)
#precedence - Env > terraform.tfvars > terraform.tfvars.json > *.auto.tfvars or .json > -var or -var-file
#trickles down and gets updated