<<<<<<< HEAD
# Create remote Repo
This playbook will do the following:
##### https://stephenreescarter.net/how-to-configure-apache-using-ansible-on-ubuntu/

##### http://www.devopstreams.com/2020/11/how-to-install-packages-using-ansible.html


##### https://www.bogotobogo.com/DevOps/Ansible/Ansible_SettingUp_Webservers_Apache.php
* mkdir ansible-apache
* cd ~/ansible-apache/
* nano ansible.cfg
Within that file, we want to add in the hostfile configuration option with the value of hosts, within the [defaults] group. Copy the following into the ansible.cfg file, then save and close it.

- [defaults]
=======
# Create remote Repo
This playbook will do the following:
##### https://stephenreescarter.net/how-to-configure-apache-using-ansible-on-ubuntu/

##### http://www.devopstreams.com/2020/11/how-to-install-packages-using-ansible.html


##### https://www.bogotobogo.com/DevOps/Ansible/Ansible_SettingUp_Webservers_Apache.php
* mkdir ansible-apache
* cd ~/ansible-apache/
* nano ansible.cfg
Within that file, we want to add in the hostfile configuration option with the value of hosts, within the [defaults] group. Copy the following into the ansible.cfg file, then save and close it.

- [defaults]
>>>>>>> 945f738b28286241b0971d178ccef57a968f1126
- hostfile = hosts