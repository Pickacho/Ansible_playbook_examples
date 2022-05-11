resource "local_file" "pet" {
    filename = var.filename
    content = var.content
}
resource "random_pet" "my-pet" {
    prefix = var.prefix[2]
    separator = var.separator
    length = var.length
}
resource "local_file" "my-pet" {
    filename = "/home/thor/Documents/GitHub/Ansible_playbook_examples/Terrafrom/terraform-local-file/statement.txt"
    content = var.file-content["statement2"] 
}