# puppet manifest: 2-execute_a_command.pp
# Create a manifest that kills a process named killmenow

exec { 'killmenow_process':
  command => 'pkill -f killmenow',
  path    => '/usr/bin/:/usr/local/bin/:/bin/',
}
