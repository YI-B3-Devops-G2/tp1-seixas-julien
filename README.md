# B3 Devops - TP 1

## Info
mail: julien.seixas@ynov.com

github _username: MrZyr0

professor : [@aegirops](https://github.com/aegirops)

## VM Config
- RAM: 1GB
- OS: Ubuntu Server 64x ( https://ubuntu.com/download/server )

### Libraires & Programs installed

```
nodejs@12
openssh-server
nginx
```

# Prerequisites
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [VirtualBox <= 6.0](https://www.virtualbox.org/wiki/Download_Old_Builds)
- git
- a shell 😁

# Installation / How to start

1. Clone the repository.
2. Execute `vagrant up` and wait for the end of the installation and configuration.
3. Your done ! The environment is up and running.

# Usage

#### SSH Access
Use `vagrant ssh` in the same folder as the installation to get SSH access of the VM

#### View nginx Web page
Go on http://localhost:8080 to request the webpage

# Uninstall

If you need to uninstall the virtual machine, you need to poweroff the machine and destroy it.
Go to the install directory (where you have the `.vagrant` folder) and execute these commands:

```
vagrant halt
vagrant destroy
```

Say yes when it asks you and after a while, all VM files are deleted.
You can maunaly delete the `.vagrant` folder.