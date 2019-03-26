# Ansible_Satellite Playbook
Fork of https://github.com/calliey1/Ansible_Satellite_Day1

Steps to run:
  - Build RHEL 7.x (latest) host
  - Register with Red Hat Customer Portal
  - Attach Satellite entitlement
  - Add a disk of 200GB (or more/less, but be sure to adjust volume values in vars file)
  - Adjust roles/satellite/vars/main.yml to fit your needs and environment
  - Run playbook
