class snmpd::service {
service { "snmpd":
        ensure     => running,
        enable     => true,
	hasrestart => true,
	hasstatus  => true,
	require    => Class["snmpd::config"],
    }
}
