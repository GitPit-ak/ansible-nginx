Vagrant.configure("2") do |config|

  config.vm.define "web01" do |web01|
    web01.vm.box = "generic/ubuntu2204"
    web01.vm.hostname = "web01"
    web01.vm.network "public_network", ip: "192.168.1.56"
    web01.vm.provision  "shell", path: "./scripts/motd.sh"
    web01.vm.provider "virtualbox" do |vb|
      vb.name = "web01"
      end
  end

  config.vm.define "web02" do |web02|
    web02.vm.box = "geerlingguy/centos7"
    web02.vm.hostname = "web02"
    web02.vm.network "public_network", ip: "192.168.1.57"
    web02.vm.provision  "shell", path: "./scripts/motd.sh"
    web02.vm.provider "virtualbox" do |vb|
      vb.name = "web02"
      end
  end

  config.vm.define "nginx" do |nginx|
      nginx.vm.box = "generic/ubuntu2204"
      nginx.vm.network "public_network", ip: "192.168.1.55"
      nginx.vm.synced_folder ".", "/vagrant"
      nginx.vm.hostname = "nginx"
      nginx.vm.provision  "shell", path: "./scripts/motd.sh"
      nginx.vm.provision  "shell", path: "./scripts/ssh.sh"
      nginx.vm.provision "shell", inline: <<-'SCRIPT'
      sudo apt update
      sudo apt install software-properties-common -y
      sudo add-apt-repository --yes --update ppa:ansible/ansible
      sudo apt install ansible -y
      SCRIPT
      nginx.vm.provider "virtualbox" do |vb|
        vb.name = "nginx"
        end 
      # nginx.vm.synced_folder ".", "/ansible",
  end


end
