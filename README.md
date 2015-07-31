# Vagrant RabbitMQ Box

## About

This box contains a vagrant / puppet recipe that allows you to create a develop environment with RabbitMQ and RabbitMQ Web Management

## Install

Make sure all your proxy environnement variables are configured (HTTP_PROXY, HTTPS_PROXY, http_proxy, https_proxy)

### [Chocolatey](https://chocolatey.org/) and Vagrant

- Open a Powershell with admin right (right click on the icon, 'Run as Admin')
- Give permissions to install Chocolatey: ``Set-ExecutionPolicy Unrestricted``
- Install Chocolatey: ``iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))``
- Install the apps: ``cinst -y git virtualbox vagrant``

### VM

- Install proxy support: ``vagrant plugin install vagrant-proxyconf``
- Clone the project ``git clone --recursive https://github.com/srouquette/ge-vm.git``
- In the project dir run ``vagrant up``

## Installed Services

### RabbitMQ

- host: localhost
- port: 5672

### RabbitMQ Web client

- url: <http://localhost:15672/>
- username: vagrant
- password: vagrant

## Vagrant basic commands

- start box: ``vagrant up``
- ssh into box: ``vagrant ssh``
- shutdown box: ``vagrant halt``
- suspend box: ``vagrant suspend``
- destroy box: ``vagrant destroy``

Optional to use ``vagrant ssh``:

- Install [Msys2](http://sourceforge.net/projects/msys2/)
- Run a MSYS2 Shell
- Install openssh: ``pacman -S openssh``

Or use putty on 127.0.0.1:2222, vagrant/vagrant
