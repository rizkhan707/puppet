class httpd{
file{'/etc/rizwan':
	ensure => 'file',
	content => "hi i am rizwan"
	}
}
