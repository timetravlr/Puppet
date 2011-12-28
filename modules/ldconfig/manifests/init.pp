# /etc/puppet/modules/ldconfig/manifests/init.pp
#
class ldconfig {
    file { "/etc/ld.so.conf":
	owner  => root, group => root,
        mode   => 644,
        source => "puppet:///modules/ldconfig/ld.so.conf.node",
    }
    file { "/etc/ld.so.conf.d":
	ensure  => directory,
	owner   => root, group => root,
	mode    => 644,
	source  => "puppet:///modules/ldconfig/ld.so.conf.d_node",
	recurse => true,
    }

#   Rerun ldconfig if config files have changed

    exec { ldlibcfg:
	command => "/sbin/ldconfig", 
	subscribe   => File["/etc/ld.so.conf.d"],
	refreshonly => true
    } # end exec

} # end class ldconfig

