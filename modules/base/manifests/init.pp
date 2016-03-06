class base {
		
	#case $osfamily {
	#	'RedHat':{ $ssh_name = 'sshd'}
	#	'Centos':{$ssh_name = 'ssh'}
	#	default :{ fail ('os family not there') }
	#		}

		
	package {'openssh-server':
		name  => 'openssh-server',
		ensure => present,
		}
	file {'/etc/ssh/sshd_config':
		ensure => file,
		owner => root,
		group  => root,
		require => Package['openssh-server'],
		source  => 'puppet:///modules/base/sshd_config',
	 	notify => Service['ssh-service-name'],	
	}
	
         service {'resource-name':
		name => $base::params::ssh_name,
		ensure => running,
		alias => 'ssh-service-name',
		enable => true,
	}
	$systemupdate = $osfamily?{
		'RedHat'=>'/usr/bin/yum update -y',
		'Debian'=>'/usr/bin/apt-get upgrade -y',
		}
	schedule{'system-daily':
		period 	 => daily,
		range	 => '00:00 - 01:00',
	}
	
	exec {$systemupdate:
		schedule => 'system-daily', 
	}
}
