resource "terraform_data" "replacement" {
  input = 1
}

resource "local_file" "foo" {
  content  = "toto"
  filename = "${path.module}/myfile.txt"
}