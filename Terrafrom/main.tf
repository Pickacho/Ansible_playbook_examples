resource "local_file" "pet" {
    filename = "/home/thor/Documents/GitHub/Ansible_playbook_examples/Terrafrom/terraform-local-file/pets.txt"
    content = "We love pets!"
}
resource "random_pet" "my-pet" {
    prefix = "Mrs"
    separator = "."
    length = "1"
}