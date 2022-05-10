resource "local_file" "pets" {
  filename = "/home/thor/Documents/GitHub/Ansible_playbook_examples/Terrafrom/terraform-local-file/pets.txt"
  content  = "We  love pets!"

}