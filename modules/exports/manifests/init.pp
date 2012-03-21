# /etc/puppet/manifests/classes/exports.pp
class exports {
 case $hostname {
	/server1/: {
	$source = "puppet:///modules/exports/exports.server1"
	}
	/server2/: {
	$source = "puppet:///modules/exports/exports.server2"
	}
 } # end case hostname

    file { "/etc/exports":
        owner  => root,
        group  => root,
        mode   => 644,
        source => $source,
    }
} # end class
