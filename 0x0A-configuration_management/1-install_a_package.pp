# Install Werkzeug first
package { 'werkzeug':
  ensure   => '2.3.7',
  provider => 'pip3',
}

# Install Flask with a specific version
package { 'flask':
  ensure   => '2.2.2',
  provider => 'pip3',
  require  => Package['werkzeug'], # Ensure Werkzeug is installed first
}
