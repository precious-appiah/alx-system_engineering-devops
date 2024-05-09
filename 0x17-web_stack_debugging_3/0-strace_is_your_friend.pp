#puppet script to fix 500 error, error as a result of bad extension

exec { 'fix issue':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
