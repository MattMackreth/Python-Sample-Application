# -*- mode: ruby -*-
# vi: set ft=ruby :
required_plugins = %w( vagrant-berkshelf )
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64'"
    app.vm.synced_folder "uberapp", "/home/vagrant/"
    app.vm.provision "chef_solo" do |chef|
      chef.add_recipe "nginx::default"
      chef.arguments = "--chef-license accept"
    end
  end
end
