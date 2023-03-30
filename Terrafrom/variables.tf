variable "filename" {
    default = "/home/thor/Documents/GitHub/Ansible_playbook_examples/Terrafrom/terraform-local-file/pets.txt"
}
variable "content" {
    default = "My favorite pet is Mrs. Whiskers"
}
/* variable "prefix" {
    default = "Mrs"
} */
variable "separator" {
    default = "."
}
variable "length" {
    default = "2"
}
variable "prefix" {
    default = ["Mrs", "Mr", "Sir"]
    type = list
}

variable file-content {
<<<<<<< HEAD
    
  
=======
type = map
default = {
    "statement1" = "We love pets!"
    "statement2" = "We love animals"
    }
}
variable "prefixsirstringname" {
    default = ["Mrs", "Mr", "Sir"]
    type =  list(string)
}
variable "prefixsirnamenumber" {
    default = [ 1 , 2, 3]
    type =  list(number)
>>>>>>> f46fe1b0f3abea9144283939f13c16e013f50ff3
}