Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/focal64"
    config.vm.define "runner" do |runner|
        runner.vm.hostname = "gitlab-runner"
        runner.vm.network "private_network", ip: "192.168.1.10"
        runner.vm.provider "virtualbox" do |vb|
            vb.name = "gitlab-runner"
            vb.memory = 4096
            vb.cpus = 2
        end
    end
end
