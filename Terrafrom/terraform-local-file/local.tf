resource "local_file" "pet" {
  filename             = "/home/thor/Documents/GitHub/Ansible_playbook_examples/Terrafrom/terraform-local-file/pets.txt"
  content              = "We love pets"
  file_permission      = "0750"
  directory_permission = "0700"
}