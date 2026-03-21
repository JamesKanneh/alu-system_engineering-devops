# Fix Nginx to handle more requests by increasing file descriptor limit
exec { 'fix--for-nginx':
  command => 'sed -i "s/#ULIMIT=\"-n 4096\"/ULIMIT=\"-n 65536\"/" /etc/default/nginx && nginx -s reload',
  path    => '/usr/local/bin/:/bin/:/sbin/'
}
