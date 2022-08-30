terraform {
  required_version  = "~>1.0.5"
  }

resource "local_file" "name" {
  filename = "${path.cwd}/sample.txt"
  content = "hi hi hi hi"
}

data "local_file" "data_name" {
  filename = local_file.name.filename
}

output "output_name" {
  value = [data.local_file.data_name.content,data.local_file.data_name.filename]
}

locals {
  file_data=toset(split(" ",(file("${path.cwd}/sample.txt"))))
  content = {
    for_each=local.file_data
    name_list=[each.key]
  }
  #file_data=[for v in data.local_file.data_name.content : v]
}

output "local_name" {
  value=[local.content.name_list]
}