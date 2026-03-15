variable "filename" {
  default= "/dir_path/test.txt"
}

variable "content" {
 default= "This is a variable terraform file"
}

# In below line we are declaring the variable and will be giving its value by export TF_VAR command as a environment variable
// command to assign value to the variable - export TF_VAR_variable_name=value (eg. export TF_VAR_env_var=abc)
variable "env_var" {}

#variable of type map
variable "map_var"{
type=map
default={
 "statement1"="This is 1st statement"
 "statement2"="This is 2nd statement"
}
}

variable "object_var"{
 type=object({
 name=string
 count=number
 count_fruits=list(number)
 fruits=set(string)
 dictionary=map(string)
})

default={
 name="Alice"
 count=2
 count_fruits=[100,200,300]
 fruits=["apple","kiwi","orange"]
 dictionary={
  "w1"="map word1"
  "w2"="map word2"
 }
}
}

// below variables declaration is for accessing the variable and its value from json file. the variable name should be same as the key in json file
// to run the terraform using json file - [terraform apply -var-file=filename.tfvars.json]. to create a var file the file should have extension ".tfvars" 
variable "msg" {}

variable "no_of" {}
