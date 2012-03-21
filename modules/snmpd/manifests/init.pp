#/etc/puppet/modules/snmpd/manifests/init.pp
class snmpd {
	include snmpd::config, snmpd::service
}
