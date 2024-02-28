# this is kill a process
exec { 'kill a process' :
    command => '/usr/bin/pkill killmenow'
}
