class base::if{
	if $::hostname =~ /^khan-rizwan(\d+)/{
		notice("you have arrived at server $0")
	}
}
