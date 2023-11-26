# puppet manifest : 1-install_a_package.pp
# Using Puppet, install flask from pip3

package { 'werkzeug':
  ensure   => '2.1.0',
  provider => 'pip3',
}
