
class  { 'eclipse':
  method          => 'download',
  release_name    => 'luna',
  service_release => 'SR2',
  ensure => present,
}

node default {
        include archive::prerequisites
#     	include wget
	include eclipse 
#	notice('Well done!')
}