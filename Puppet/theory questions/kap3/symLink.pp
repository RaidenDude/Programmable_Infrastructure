file { '/home/ubuntu/public_html':
        ensure => link,
        target => '/var/www/ubuntu',
}
