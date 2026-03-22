# Fix Nginx to handle more requests by increasing file descriptor limit
exec { 'fix--for-nginx':
  command => '/bin/sed -i "s/ULIMIT=.*/ULIMIT=\"-n 65536\"/" /etc/default/nginx && /usr/sbin/nginx -s reload',
  path    => '/usr/local/bin/:/bin/:/sbin/'
}
