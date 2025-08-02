Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: <<-SHELL
      apt-get update && apt-get upgarade -y
      echo "10.0.0.13  ubuntuvm" >> /etc/hosts
  SHELL

  config.vm.provision "shell", path: "C:/Users/Mykola/dnsmasq/commmon_staff.sh"
  
  config.vm.define "ubuntuvm" do |ubuntuvm|
    ubuntuvm.vm.provision "shell", path: "C:/Users/Mykola/dnsmasq/copy_file.sh"
    ubuntuvm.vm.box = "bento/ubuntu-22.04"
    ubuntuvm.vm.hostname = "ubuntuvm"
    ubuntuvm.vm.network "private_network", ip: "10.0.0.13"
    ubuntuvm.vm.provider "virtualbox" do |vb|
        vb.memory = 2048
        vb.cpus = 2
    end    
  end
end
  