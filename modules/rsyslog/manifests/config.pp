# /etc/puppet/modules/rsyslog/manifests/config.pp
#
class rsyslog::config {
    file { "rsyslog.conf":
	name    => "/etc/rsyslog.conf",
        owner   => "root", group => "root",
        mode    => 644,
#       require => Package["rsyslog"],
        source  => "puppet:///modules/rsyslog/rsyslog.conf.node",
	notify  => Class["rsyslog::service"],
    }
}
