# configuring nginx using puppet

package{ 'nginx' :
        ensure  => 'installed',
}

file{' etc/nginx/sites-available/config ' :
    ensure => 'present",
    content  => "
    server {
        listen 80;
        listen [::]:80;

        root /var/www/html;
        index index.html index.htm index.nginx-debian.html;

        server_name 107.21.38.255;
        location / {
            "Hello World"
        }
    }"
},
notify => Exec['nginx_restart'],

