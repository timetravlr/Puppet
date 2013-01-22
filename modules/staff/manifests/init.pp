#/etc/puppet/modules/staff
class staff {
        include staff::virt_users, staff::virt_groups, staff::realize
}
