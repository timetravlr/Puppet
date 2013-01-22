#/etc/puppet/modules/staff/manifests/realize_compute.pp
# Add specific users to User section whether adding or removing accts
class staff::realize inherits staff_compute::virt_users {
  include staff::virt_groups
  realize (
# Groups:
	Group["agents"],
	Group["evil_genius"],
# Users:
	User["jbond"],
	User["drno"],

  )
} #end class
