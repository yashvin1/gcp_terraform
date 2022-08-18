data local_file name {
  filename = "sample.txt"
}

output name {
  value       = data.local_file.name.content
  
}

