# /etc/puppet/modules/rsyslog/manifests/init.pp

class rsyslog {
        include rsyslog::config, rsyslog::service
}
