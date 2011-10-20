class ssh::config {
	
	case $operatingsystem {
	RedHat: {
	 file { "/etc/ssh/sshd_config":
	 ensure => present,
	 owner => 'root', group => 'root', 
	 mode => 644,
	 source => "puppet:///modules/ssh/sshd_config",
	 notify => Class["ssh::service"],
	 } # file
	} # RedHat
	Debian: {
	 file { "/etc/ssh/sshd_config":
	 ensure => present,
	 owner => 'root', group => 'root', 
	 mode => 644,
	 source => "puppet:///modules/ssh/sshd_config.debian",
	 notify => Class["ssh::service"],
	 } # file
	} # Debian
	Darwin: {
	 file { "/etc/sshd_config":
	 ensure => present,
	 owner => root, group => wheel, 
	 mode => 644,
	 source => "puppet:///modules/ssh/sshd_config.mac",
	 notify => Class["ssh::service"],
	 } # file
	} # Darwin
	} # OS

} # end class ssh::config


