class base::file{
	File{
		owner => root,
		group => '660',
	     }
	$homedir = "/root"
	file{"/$(homedir)/motd":
		ensure  => present,
		source => 'puppet:///modules/filedemo/motd',
		owner  => root,
		group => root,
		mode => '0644'
	     }
	file {'/etc/motd':
		ensure => link,
		target => '/root/motd',
	      }
	file {"/$(homedir)/myfile.txt":
		content => 'my file',
	      }
}
	
