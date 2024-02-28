# this is to install flask from pip
package { 'flask' :
        ensure   => 'installed',
        provider =>'pip3'

}
