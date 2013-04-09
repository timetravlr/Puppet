#/etc/puppet/modules/cacti/manifests/config.pp
# Put files in place for cacti client.
# Add your iostat to root's crontab manually:
#  * * * * * export LC_ALL=C ; cd /var/cache/cacti && /usr/bin/iostat -xkd 30 2 > io.tmp && mv io.tmp iostat.cache >/dev/null 2>&1
#
#
class cacti::config {

	file { "/var/cache/cacti":
		owner  => "root",
		group  => "root",
		ensure => directory,
		mode   => 755,
	}
	file { "/usr/local/bin/iostat.pl":
		ensure  => present,
		owner   => "root",
		group   => "root",
		mode    => 755,
		source  => "puppet:///modules/cacti/iostat.pl",
	}

	package { ["net-snmp-utils"]:
   	ensure => present,
	}
}
