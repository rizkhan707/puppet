class apache{
 $apachename = $osfamily ? {
    'RedHat'    => 'httpd',
    'Debian'    => 'apache2',
}

  package { 'apache':
    name    => $apachename,
    ensure  => present,
  }
   service {'apache-service':
	name => $apachename,
	ensure => running,
	}
}
