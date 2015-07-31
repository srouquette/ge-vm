# Vagrant RabbitMQ Box

## About

This box contains a vagrant / puppet recipe that allows you to create a develop environment with RabbitMQ and RabbitMQ Web Management

## Install

* How to install [Chocolatey](https://chocolatey.org/):
  * Open a Powershell with admin right (right click on the icon, 'Run as Admin')
  * Allows to install Chocolatey ``Set-ExecutionPolicy Unrestricted``
  * Install Chocolatey ``iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))``
  * Install the necessary apps: ``cinst -y git virtualbox vagrant``
* Clone the project ```git clone --recursive https://github.com/srouquette/ge-vm.git```
* In the project dir run ```vagrant up```

## Installed Services

### RabbitMQ

host: localhost
port: 5672

### RabbitMQ Web client

url: http://localhost:15672/
username: vagrant
password: vagrant

## Vagrant basic commands

* start box: ```vagrant up```
* ssh into box: ```vagrant ssh```
* shutdown box: ```vagrant halt```
* suspend box: ```vagrant suspend``
* destroy box: ```vagrant destroy```
