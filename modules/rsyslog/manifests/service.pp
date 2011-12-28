# /etc/puppet/modules/rsyslog/manifests/service.pp

class rsyslog::service {
	service { "rsyslog":
         enable    => "true",
         ensure    => "running",
         hasstatus => "true",
         hasrestart => "true",
	 require => Class["rsyslog::config"],
    	}
}
