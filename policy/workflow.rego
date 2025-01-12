package main

deny[msg] {
  not input.permissions
  msg = "Workflow permissions are missing"
}

deny[msg] {
  input.permissions != {}
  msg = sprintf("Workflow permissions are not empty: %v", [input.permissions])
}
