# /etc/puppet/modules/sudo/manifests/config2.pp
# 
# Configure sudo by matching hostname regular expressions.
#
class sudo::config2 {
 case $hostname {
    /node/: {
        $source = "puppet:///modules/sudo/sudoers.node"
    } # node
    /server/: {
        $source = "puppet:///modules/sudo/sudoers.server"
    } # server
   } # end case

     file { "/etc/sudoers":
        owner  => root, group  => root,
        mode   => 440,
        source => $source,
     } # file

} # end class sudo::config2

