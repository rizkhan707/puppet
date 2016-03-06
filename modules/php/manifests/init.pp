class php { 
  $phpname = $osfamily ? {
    'Debian'    => 'php5',
    'RedHat'    => 'php',

  }
        
  package { 'php':
    name    => $phpname,
    ensure  => present,
  }
          
  package { 'php-pear':
    ensure  => present,
  }
  ## service {'php-service':
  ## name => $phpname,
  ### ensure => running,
  ### enable => true,
#}
 file { 'infor.php':                                
    path => '/var/www/html/infor.php',     
    ensure => file,        
    source => 'puppet:///modules/php/infor.php', 
  }
}
