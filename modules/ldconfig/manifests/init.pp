# /etc/puppet/modules/ldconfig/manifests/init.pp
# ld.so.conf only contains a reference to use files in directory ld.so.conf.d/*
# Rerun ldconfig if files change in directory /etc/ld.so.conf.d/
#
class ldconfig {
    file { "/etc/ld.so.conf":
	owner  => root, group => root,
        mode   => 644,
        source => "puppet:///modules/ldconfig/ld.so.conf.node",
    }

# Pull the desired set of files based on hostname match
 case $hostname {
	/node/: { 
		$source = "puppet:///modules/ldconfig/ld.so.conf.d_compute" 
	}
	/ingest/: {
		$source = "puppet:///modules/ldconfig/ld.so.conf.d_ingest"
	}
    }

# Rebuild this directory if any files in it change or don't exist
    file { "/etc/ld.so.conf.d":
	ensure  => directory,
	owner   => root, group => root,
	mode    => 644,
	source  => $source,
	recurse => true,
    }

#   Rerun ldconfig if config files have changed

    exec { ldlibcfg:
	command => "/sbin/ldconfig", 
	subscribe   => File["/etc/ld.so.conf.d"],
	refreshonly => true
    } # end exec

} # end class ldconfig

