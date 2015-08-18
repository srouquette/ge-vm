# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.hostname = "ge-vm"
    config.vm.box = "ubuntu/trusty64"

    if Vagrant.has_plugin?("vagrant-proxyconf")
        config.proxy.enabled  = true
        config.proxy.http     = "http://http-proxy-euro.geps.ge.com:80"
        config.proxy.https    = "http://http-proxy-euro.geps.ge.com:80"
        config.proxy.no_proxy = "localhost,127.0.0.1"
    end

    config.vm.network :forwarded_port, guest: 5672, host: 5672
    config.vm.network :forwarded_port, guest: 15672, host: 15672

    config.vm.provision :puppet do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.module_path = "puppet/modules"
    end

    config.vm.provider :virtualbox do |v|
        v.name = "ge-vm"
    end

end
