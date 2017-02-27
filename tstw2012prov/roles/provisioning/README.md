Role Name
---------

Server provisioning

Requirements
------------

This role uses the ansible module "os_server", so it requires all open python >= 2.6, python >= 2.7, shade, Powershell >= 3.0

Role Variables
--------------

Extra Variables:
----------------

Region		(Name of the Region)
Cloud		(Named cloud to oerate against)
Flavour		(The name or id of the flavor)
AZ			(Availability zone in which to create the server)
Image		(The name or id of the base image to boot)
Name 		(Name that has to be given to the instance)
Keyname		(The key pair name to be used when creating a instance)
Netid		(A list of networks to attach this instance's interface should be attached)
Userdata	(Opaque blob of data which is made available to the instance)

How to Provision an Instance from the CLI:
------------------------------------------

ansible-playbook deploy.yml --extra-vars="name=myWindowsImage images=ws2012r2 fla=A4" -vvvvv

Dependencies
------------

none

License
-------

BSD

Author:		Yomi Ogunyinka - Infrastructure Architect
Email:		Yomi.O@JaghoConsultants.co.uk
Website:  	https://Jagho.Info