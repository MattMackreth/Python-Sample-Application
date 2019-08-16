required_plugins = %w( vagrant-hostsupdater vagrant-berkshelf )
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end


Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.synced_folder "uberapp", "/home/ubuntu/app/"
  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "nginx::default"
    chef.arguments = "--chef-license accept"
  end
end
