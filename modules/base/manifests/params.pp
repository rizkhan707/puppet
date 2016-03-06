class base::params{
#sfamily {
        #       'RedHat':{ $ssh_name = 'sshd'}
        #       'Centos':{$ssh_name = 'ssh'}
        #       default :{ fail ('os family not there') }
        #               }
        $ssh_name=$osfamily?{
                'RedHat' => 'sshd',
                'Debian' => 'ssh',
                }
}
