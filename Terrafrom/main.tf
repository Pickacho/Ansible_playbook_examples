resource "local_file" "pet" {
    filename = var.filename
    content = var.content
}
resource "random_pet" "my-pet" {
<<<<<<< HEAD
    prefix = var.prefix[1]
=======
    prefix = var.prefix[2]
>>>>>>> f46fe1b0f3abea9144283939f13c16e013f50ff3
    separator = var.separator
    length = var.length
}
resource "local_file" "my-pet" {
    filename = "/home/thor/Documents/GitHub/Ansible_playbook_examples/Terrafrom/terraform-local-file/statement.txt"
    content = var.file-content["statement2"] 
}