# Fix Nginx to handle more requests by increasing file descriptor limit
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/2000/" /etc/default/nginx && nginx -s reload',
  path    => '/usr/local/bin/:/bin/:/sbin/'
}
