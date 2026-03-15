resource "local_file" "variable" {
 filename = var.filename
 content = var.content
}

resource "random_string" "rstring" {
 length = 16
 special = true
 override_special = "*()<>?"
}

output rstring {
 value= random_string.rstring.result
}


output "output_env_var"{
 value=var.env_var
}

output "output_map1"{
 value=var.map_var.statement1
}

output "output_map2"{
 value=var.map_var.statement2
}

output "output_object"{
 value={
  name=var.object_var.name
  count=var.object_var.count
  count_fruits=var.object_var.count_fruits
  fruits=var.object_var.fruits
  dictionary1=var.object_var.dictionary.w1
  dictionary2=var.object_var.dictionary.w2
 }
}


output "json_var"{
value={
 msg=var.msg
 count=var.no_of
}
}
