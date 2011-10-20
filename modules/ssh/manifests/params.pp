class ssh::params {
	case $operatingsystem {
	 Debian: {
	  $ssh_package_name = 'openssh-server'
	  $ssh_service_config = '/etc/ssh/sshd_config'
         } # Debian
	/(RedHat|CentOS)/: {
	  $ssh_package_name = 'openssh-server'
	  $ssh_service_config = '/etc/ssh/sshd_config'
	 } # RedHat
	Darwin: {
          $ssh_package_name = 'openssh-server'
	  $ssh_service_config = '/etc/sshd_config'
	 } # Darwin
 } # operatingsystem
}  # ssh::params
