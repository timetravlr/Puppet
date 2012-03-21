# /etc/puppet/manifests/classes/ntp.pp
# 
class ntp {
    file { "ntp.conf":
	name   => "/etc/ntp.conf",
        owner  => "root",
        group  => "root",
        mode   => 644,
        source => "puppet:///modules/ntp/ntp.conf",
    }
    service { "ntpd":
	subscribe => File["ntp.conf"],
	require   => File["ntp.conf"],
	restart   => true,
	ensure    => running,
    }
}
