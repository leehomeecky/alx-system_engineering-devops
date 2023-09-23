# Create a file in /tmp

# checking if the temp file exists
file { '/tmp':
  ensure => 'directory',
}

file { '/tmp/school':
  ensure  => 'present',
  content => 'I love Puppet',
  group   => 'www-data',
  mode    => '0744',
  owner   => 'www-data',
  path    => '/tmp/school',
  require => File['/tmp'],
}
