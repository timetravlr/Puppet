#/etc/puppet/modules/staff/manifests/virt_groups.pp:
class staff::virt_groups {
	@group { "agents":
	gid => "007",
	ensure => present,
	}
	@group { "evil_genius":
	gid => "321",
	ensure => present,
	}
}

