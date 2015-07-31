package { 'curl': ensure => installed }

include '::rabbitmq'

rabbitmq_user { 'vagrant':
  admin    => true,
  password => 'vagrant',
}
