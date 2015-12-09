# cephittl
## following is unessasary background
setup for VMs

	create VMs via virsh on cpa00006
	use hand built bridge br320,br330 (vlan 320 and 330) added with virsh net-define
	use same kickstart as physical machines
	dhcp'd off same cpa00001

	Example virsh-install
	virt-install --network model=virtio,bridge=br320 --name cpx00003 --ram=4096 --vcpus=8 --disk path=/vms/cpx00003.img,size=10 --graphics none --location=nfs:192.168.242.10:/pub --extra-args=" ks=nfs:192.168.242.10:/pub/ks.cfg console=tty0 console=ttyS0,115200"virt-install --network model=virtio,bridge=br320 --name cpx00003 --ram=4096 --vcpus=8 --disk path=/vms/cpx00003.img,size=10 --graphics none --location=nfs:192.168.242.10:/pub --extra-args=" ks=nfs:192.168.242.10:/pub/ks.cfg console=tty0 console=ttyS0,115200"

	running with NeworkManager off && nework on

Missing:

missing dynamic grab of cbt users id_rsa.pub
missing known_hosts addition from cbthead to all cbt nodes
THIS DOES NOT PARITION DRIVES.  follow ceph/cbt for that setup
