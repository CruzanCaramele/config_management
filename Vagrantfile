Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  
  config.vm.synced_folder ".", "/vagrant", disabled: false
  config.vm.synced_folder "./puppet", "/etc/puppetlabs/code/environments/pbg"
  config.vm.synced_folder "./examples", "/examples"
  
  config.vm.provision "shell", path: "scripts/vagrant_provision.sh"
  config.vm.provision "shell", inline: "cp /vagrant/nginx /etc/puppetlabs/code/environments/production/modules/"
  config.vm.provision "shell", inline: "cp /examples/site.pp /etc/puppetlabs/code/environments/production/manifests/"
end
