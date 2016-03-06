class filecontents {
	file { '/etc/rizwan':
	ensure => present,
	owner  => root,
	group  => wheel,
	mode  => 0644,
	}
}
