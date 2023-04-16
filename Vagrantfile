Vagrant.configure('2') do |config| # rubocop:disable Style/FrozenStringLiteralComment
  config.vm.define 'vm1' do |vm1|
    vm1.vm.box = 'ubuntu/focal64'
    vm1.vm.hostname = 'vm1'
    vm1.vm.provider 'virtualbox' do |vb|
      vb.memory = '8192'
      vb.cpus = 4
      vb.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
    end
    vm1.vm.provision 'shell', path: './bootstrap.sh'
  end
end
