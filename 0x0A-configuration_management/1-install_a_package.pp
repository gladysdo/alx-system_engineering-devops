# Install Werkzeug first
package { 'werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}

# Install Flask with a specific version
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['werkzeug'],
}
