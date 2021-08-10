class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDIin+y4PTmiu5xf5yxjQQ31E2PwrOGpdJFK1gCB05FGp6KdUbqSnomVdz7L/VAMC4X7keQJ6XVR56e98j3Q8/Vvgt3tBgdjecfDHC/MWimobtBFVDu9kr8XX/QQmNhNZ1WHSO1DyFd95NIy22Q+C/a7dcr346EzsCVpXS/SvmpF53EFvFLwTM6c9UZqLIUvAaJU99xdJ8dmFtrXGiW4cUdHH1hInDb/XaSGeZe+rpmBIoa+ei/+bASqFaKzG9rErvoX1HbW45HsmuOvQkN5/nZYlHNWJjwkva90VjxMqFoVJIvO/kuRZsax967yxxw+YFXD9inyhSDE2FZCVEi7VYb',
	}  
}
