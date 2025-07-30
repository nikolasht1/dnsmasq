Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: <<-SHELL
      apt-get update && apt-get upgarade -y
      echo "10.0.0.13  ubuntuvm" >> /etc/hosts
  SHELL

  config.vm.provision "shell", path: "C:/Users/Mykola/pentest_server/commmon_staff.sh"
  
  config.vm.define "pentest" do |pentest|
   # pentest.vm.provision "shell", path: "C:/Users/Mykola/pentest_server/pentest_node_staff.sh"
    pentest.vm.box = "bento/ubuntu-22.04"
    pentest.vm.hostname = "ubuntuvm"
    pentest.vm.network "private_network", ip: "10.0.0.13"
    pentest.vm.provider "virtualbox" do |vb|
        vb.memory = 4096
        vb.cpus = 2
    end    
  end
end
  