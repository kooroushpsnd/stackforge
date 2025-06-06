Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  # web applications
  config.vm.define "web1" do |web1|
    web1.vm.hostname = "web1"
    web1.vm.network "private_network", ip: "192.168.56.10"
    
    web1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
    end
  end

  config.vm.define "web2" do |web2|
    web2.vm.hostname = "web2"
    web2.vm.network "private_network", ip: "192.168.56.11"
    
    web2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
    end
  end

  # mysql database
  config.vm.define "db" do |db|
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.56.12"
    
    db.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
    end
  end

  # monitoring - Prometheus and Grafana
  config.vm.define "observer" do |observer|
    observer.vm.hostname = "observer"
    observer.vm.network "private_network", ip: "192.168.56.13"
    
    observer.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
    end
  end

  # load balancer - Traefik
  config.vm.define "lbserver" do |lbserver|
    lbserver.vm.hostname = "lbserver"
    lbserver.vm.network "forwarded_port", guest: 80, host: 8080
    #if you need https uncomment this line
    # lbserver.vm.network "forwarded_port", guest: 443, host: 8443
    lbserver.vm.network "private_network", ip: "192.168.56.14"
    
    lbserver.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 1
    end
  end
end
