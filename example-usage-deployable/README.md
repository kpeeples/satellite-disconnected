# Ansible Vagrant profile for a new install using the Satellite role (DEPLOY mode)

## Background

Vagrant and VirtualBox (or some other VM provider) can be used to quickly build or rebuild virtual servers.

## Getting Started

This README file is inside a folder that contains a `Vagrantfile` (hereafter this folder shall be called the [vagrant_root]), which tells Vagrant how to set up your virtual machine in VirtualBox.

To use the vagrant file, you will need to have done the following:

  1. Download and Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  2. Download and Install [Vagrant](https://www.vagrantup.com/downloads.html)
  3. Install [Ansible](http://docs.ansible.com/ansible/latest/intro_installation.html)
  4. Open a shell prompt (Terminal app on a Mac) and cd into the folder containing the `Vagrantfile`
  5. This step is only required when dependent roles are required. Run the following command to install the necessary Ansible roles for this profile: `$ ansible-galaxy install -r requirements.yml`
Once all of that is done, you can simply type in `vagrant up`, and Vagrant will create a new VM, install the base box, and configure it.

Once the new VM is up and running (after `vagrant up` is complete and you're back at the command prompt), you can log into it via SSH if you'd like by typing in `vagrant ssh`. Otherwise, the next steps are below.

## Author Information

Modified for CPB NERD originally from [Jeff Geerling](http://jeffgeerling.com/), author of [Ansible for DevOps](https://www.ansiblefordevops.com/).
