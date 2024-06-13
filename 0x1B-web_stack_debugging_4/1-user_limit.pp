# debuuging issue: log in as holberton user without any error

# increase both hard and soft limits

exec { 'increase soft limit for holberton user':
	command => 'sudo sed -i "/holberton soft/s/4/1000/" /etc/security/limits.conf',
	path    => '/usr/local/bin/:/bin/'
}

exec { 'increase hard limit for holberton user':
	command => 'sudo sed -i "/holberton hard/s/5/1000/" /etc/security/limits.conf',
	path    => '/usr/local/bin/:/bin/'
}
