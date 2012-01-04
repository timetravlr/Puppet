# /etc/puppet/manifests/classes/fstab.pp
class fstab {
# Pull the right file based on hostname match
 case $hostname {
	/node/: { 
		$source = "puppet:///modules/fstab/fstab.node" 
	}
	/int1/: {
		$source = "puppet:///modules/fstab/fstab.int1"
	}
	/int2/: {
		$source = "puppet:///modules/fstab/fstab.int2"
	}
    }

    file { "/etc/fstab":
        owner  => root, group => root, mode => 644,
        source => $source,
    }

} # end class fstab

