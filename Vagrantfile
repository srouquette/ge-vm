# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.hostname = "ge-vm"
    config.vm.box = "ubuntu/trusty64"
    #config.vm.network "private_network", ip: "192.168.1.2"
    config.vm.network "private_network", type: "dhcp"

    if Vagrant.has_plugin?("vagrant-proxyconf") && ARGV[1] == "ge"
        config.proxy.enabled  = true
        config.proxy.http     = "http://http-proxy-euro.geps.ge.com:80"
        config.proxy.https    = "http://http-proxy-euro.geps.ge.com:80"
        config.proxy.no_proxy = "localhost,127.0.0.1"
    else
        config.vm.network "forwarded_port", guest: 5672, host: 5672
        config.vm.network "forwarded_port", guest: 15672, host: 15672
        config.vm.network "forwarded_port", guest: 6379, host: 6379
    end

    config.vm.provision "guest_ansible" do |ansible|
        ansible.playbook = "provision/playbook.yml"
        ansible.sudo = true
    end

    config.vm.provider :virtualbox do |v|
        v.name = "ge-vm"
        v.memory = 2048
    end

end
