# Overview

This lab is based on the Udemy course https://www.udemy.com/mastering-ansible/
The lab has been build with Virtualbox VM host, and may not work with other VM providers without modification.
This lab does not use Ansible via Vagrant, and thus Ansible is not a requirement on your Vagrant host. Ansible will be installed on an ansible host VM, and all playbooks to configure the lab machines will be run from there interactively, once Vagrant has built the base VMs. The lab configures a simple nginx load balancer, 2 web app servers and a mysql database.

The lab will implement the following configuration:

-
| Machine  Name | Role          | Network Configuration                  |
|---------------|---------------|----------------------------------------|
| control       | Ansible  host | private_network, ip: 192.168.135.10    |
| lb01          | Load Balancer | private_network, ip: 192.168.135.101   |
| app01         | web server 1  | private_network, ip: 192.168.135.111   |
| app02         | web server 2  | private_network, ip: 192.168.135.112   |
| db01          | mysql db      | private_network, ip: 192.168.135.121   |

## Quick Start

* Sync this repo
* run `vagrant up` from the root of the synced repo (the folder with Vagrantfile in it)
* Once the VMs are built, type `vagrant ssh control` to logon to the ansible controller from within your vagrant project folder
* Change directories `cd /vagrant/ansible` which is the ansible subfolder of your vagrant project for this lab (the vagrant project folder is mounted within the VMs as /vagrant during provisioning)
* run `ansible-playbook playbooks/site.yml` to build the entire 3 tier configuration (load balancer, sample web app, and database connection)
* test that the application stack is working properly by running `curl http://lb01/db`
