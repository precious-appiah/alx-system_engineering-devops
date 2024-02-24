# this is to create a file with the following configurations
file{'/tmp/school':
        mode    => '0744',
        owner   => 'www-data',
        group   => 'www-data',
        content => 'I love Puppet',
}

