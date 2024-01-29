# Increases the amount of traffic an Nginx server can handle

# Increase the ULIMIT of the default file
exec { 'fix--for-nginx':
# modify the ulimit value
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
# specify the path for the sed command
  path    => '/usr/local/bin/:/bin'
}

#restart Nginx

exec { 'nginx-restart':
# restart the nginx
  command => 'nginx restart',
#specify the path for the init.d script
  path    => '/etc/init.d/'
}
