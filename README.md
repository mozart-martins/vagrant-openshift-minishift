# vagrant-openshift-minishift

Repositorio Vagrant para subir ambiente Minishift.

# Como rodar?

Com VirtualBox e Vagrant instalado:

> git clone https://github.com/mozart-martins/vagrant-openshift-minishift.git

> vagrant up

> vagrant ssh vm1

> minishift start --vm-driver virtualbox --host-only-cidr "192.168.56.11/24"
