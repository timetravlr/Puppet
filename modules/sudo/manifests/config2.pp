# /etc/puppet/modules/sudo/manifests/config2.pp
# 
# Configure sudo by matching hostname regular expressions.
#
class sudo::config2 {
   case $hostname {
    /node/: {
     file { "/etc/sudoers":
        owner  => root, group  => root,
        mode   => 440,
        source => "puppet:///modules/sudo/sudoers.node",
     } # file
    } # node

    /server/: {
     file { "/etc/sudoers":
        owner  => root, group  => root,
        mode   => 440,
        source => "puppet:///modules/sudo/sudoers.server",
     } # file 
    } # ingest

   } # hostname
} # end class sudo::config2

