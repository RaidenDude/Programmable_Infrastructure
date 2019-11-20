group { 'data':
        ensure => present,
}

user { 'data':
        ensure => present,
        gid => 'data',
        groups => 'sudo',
        password => '$6$38Tdw'
}
