class sudo::config {
	
	case $operatingsystem {
	RedHat: {
	 file { "/etc/sudoers":
	 ensure => present,
	 owner => 'root', group => 'wheel', 
	 mode => 440,
	 source => "puppet:///modules/sudo/sudoers.rhel",
	 } # file
	} # RedHat
	Debian: {
	 file { "/etc/sudoers":
	 ensure => present,
	 owner => 'root', group => 'root', 
	 mode => 440,
	 source => "puppet:///modules/sudo/sudoers.debian",
	 } # file
	} # Debian
	Darwin: {
	 file { "/etc/sudoers":
	 ensure => present,
	 owner => root, group => wheel, 
	 mode => 440,
	 source => "puppet:///modules/sudo/sudoers.mac",
	 } # file
	} # Darwin
	} # OS

} # end class sudo::config


