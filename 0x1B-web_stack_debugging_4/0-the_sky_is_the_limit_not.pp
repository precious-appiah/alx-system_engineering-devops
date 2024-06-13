# Increase request  Nginx server can handle at a time.

# Increase the ULIMIT of the default file
exec { 'increase request limits':
  command => 'sed -i "s/15/1000/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}

# Restart Nginx
exec { 'nginx restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
