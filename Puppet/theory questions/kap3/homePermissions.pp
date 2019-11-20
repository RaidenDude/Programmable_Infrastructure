file { '/home/ubuntu':
        ensure => directory,
        mode => "0750",
        owner => ubuntu,
        group => ubuntu,
}