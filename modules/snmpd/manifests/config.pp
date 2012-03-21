# /etc/puppet/manifests/classes/snmpd.pp
#
class snmpd::config {
    file { "/etc/snmp/snmpd.conf":
        owner  => root,
        group  => root,
        mode   => 644,
        source => "puppet:///modules/snmpd/snmpd.conf",
    }
    file { "/etc/sysconfig/snmpd":
        owner  => root,
        group  => root,
        mode   => 644,
        source => "puppet:///modules/snmpd/snmpd.options",
    }
    file { "/etc/sysconfig/snmptrapd":
        owner  => root,
        group  => root,
        mode   => 644,
        source => "puppet:///modules/snmpd/snmptrapd.options",
    }
} # end class
