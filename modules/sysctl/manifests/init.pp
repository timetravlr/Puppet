# /etc/puppet/modules/sysctl/manifests/init.pp
#
class sysctl {
    file { "/etc/sysctl.conf":
        owner  => "root",
        group  => "root",
        mode   => 644,
        source => "puppet:///modules/sysctl/sysctl.conf",
    }
exec { sysctl_reload: command => "/sbin/sysctl -p", 
    subscribe   => File["/etc/sysctl.conf"],
    refreshonly => true
    }
}

