# /etc/puppet/modules/sudo/manifests/config.pp
# Define sudoers file based on operating system match
#
class sudo::config {
	
	case $operatingsystem {
	 RedHat: {
          $source = "puppet:///modules/sudo/sudoers.rhel",
	 } # RedHat
	 Debian: {
	  $source = "puppet:///modules/sudo/sudoers.debian",
	 } # Debian
	 Darwin: {
	  $source = "puppet:///modules/sudo/sudoers.mac",
	 } # Darwin
	} # OS


	 file { "/etc/sudoers":
	  ensure => present,
	  owner => root, group => wheel, 
	  mode => 440,
	  source => $source,
	 } # file

} # end class sudo::config


