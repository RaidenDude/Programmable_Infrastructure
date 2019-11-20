package { 'ssh':
        ensure => latest,
}

file { '/etc/ssh/ssh_config':
        require => Package['ssh'],
        ensure => file,
}

augeas { 'ssh_config':
        context => '/etc/ssh/ssh_config',
        changes => 'set X11Forwarding yes',
        require => Package['ssh'],
        notify => Service['sshd'],
}

service { 'sshd':
        ensure => running,
        subscribe => File['/etc/ssh/ssh_config'],
}
