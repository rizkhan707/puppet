class ntp::service {
	service { "$ntp::params::service_name":
		ensure => running,
		}
}
