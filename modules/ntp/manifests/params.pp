class ntp::params{
	case $::operatingsystem{
		'ubuntu':{
		$template ='ntp_ubuntu.conf'
		$service_name='ntp'
		}

	          'CentOS':{
		 $template='ntp_centos.conf'
                 $service_name='ntpd'
		 $default_server = ["server 0.centos.pool.ntp.org iburst",
				    "server 1.centos.pool.ntp.org iburst",
				    "server 2.centos.pool.ntp.org iburst",
				    "server 3.centos.pool.ntp.org iburst",]
		}
		default:{
			fail("os $::operating system is not currently supported")	}
	
}
}
