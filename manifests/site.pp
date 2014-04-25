ource user root

user { 'root':
  ensure           => 'present',
  comment          => 'root',
  gid              => '0',
  groups           => ['root', 'bin', 'daemon', 'sys', 'adm', 'disk', 'wheel'],
  home             => '/root',
  password         => 'password',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '0',
}

user { 'motech':
	ensure => present,
   	uid => '507',
   	gid => 'admin',
   comment => 'This user was created by Puppet',
   
}

package { 'java-1.7.0-openjdk.x86_64':

ensure => "installed" }

