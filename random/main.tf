resource random_integer rinit {
  min = 0
  max = 10

}
output rinit {
  value       = random_integer.rinit.result
  description = "description"
  depends_on  = [random_integer.rinit]
}
