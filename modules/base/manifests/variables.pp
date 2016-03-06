class base::variables {
	$localscope="Hi i am rizwan"
	
	file {'/root/var_test.txt':
		content => $localscope,
		owner => root,
	     }
	notify{" $(localscope) is a local scope variable":}
}
		}

