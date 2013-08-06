#/etc/puppet/modules/staff/manifests/virt_users.pp
# User management module. MS 1-2013
# Add new users to be created or removed in their own paragraph
#  with "present" or "absent"
class staff::virt_users {

@user { "jbond":
	uid => "12345",
	gid => "007",
	comment => "J Bond",
	home => "/home/jbond",
	password => '$6$ZZZZZZZZ',
	shell   => "/bin/bash",
	ensure => "present",
	}
@user { "drno":
	uid => "12347",
	gid => "321",
	groups => "optional",
	comment => "Dr No",
	home => "/home/drno",
	password => '$6$XXXXXXXXXXX..',
	shell   => "/bin/csh",
	ensure => "present",
	}

} # end class

