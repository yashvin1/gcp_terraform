resource random_integer rinit {
  min = 0
  max = 10

}
output rinit {
  value       = random_integer.rinit.result
  description = "description"
  depends_on  = [random_integer.rinit]
}

resource random_string str {
  length  = 10
  upper   = true
  lower   = true
  number  = true
  special = true

}

output str {
  value       = random_string.str.result
}

