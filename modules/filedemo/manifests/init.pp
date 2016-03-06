class filedemo {
	File {
		owner => 'root',
		group => 'root',
		mode  => '0755',
	}
	$homedir ="/root"
	$content = "my files content"
	
	file {"${homedir}/myfile1.txt":
		content => "$content",
		}
	}
