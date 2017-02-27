# Role Name

Create a Windows User

Requirements
------------

This playbook uses the ansible module "win_user" so it requires python >= 2.6, python >= 2.7, shade, Powershell >= 3.0

Role Variables
--------------

Extra variables required:

-  win_intial_password	(This is set in the Ansible Vault)

Dependencies
------------

winProvisioning role - which creates an instance in OpentStack

Author Information
------------------

Author:	Yomi Ogunyinka - Infrastructure Architect
Email:	Yomi.O@JaghoConsultants.co.uk
https://Jagho.info