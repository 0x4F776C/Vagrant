# Vagrant
Install and run Vagrant + Virtualbox
------------------------------------
1. yum install -y https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.rpm
2. yum install -y https://rpmfind.net/linux/centos/7.6.1810/os/x86_64/Packages/SDL-1.2.15-14.el7.x86_64.rpm
3. vim /etc/yum.repos.d/centos.repo
4. type in the following...
	[centos]
	name=centos
	baseurl=http://mirror.centos.org/centos/7/os/x86_64/
	gpgcheck=0
	enabled=1
5. yum update
6. yum install -y kernel-devel kernel-headers gcc make perl
7. yum -y install wget
8. wget https://www.virtualbox.org/download/oracle_vbox.asc
9. rpm --import oracle_vbox.asc
10. yum install -y https://download.virtualbox.org/virtualbox/6.0.6/VirtualBox-6.0-6.0.6_130049_el7-1.x86_64.rpm
---------------------
[complete] virtualboxsystem
---------------------
11. systemctl status vboxdrv (optional)
12. vagrant init hashicorp/precise32
13. vagrant up
14. vagrant halt
15. vagrant plugin install vagrant-vbguest
16. vagrant reload
17. vagrant ssh
------------------
[complete] vagrant
------------------
