eclipse::plugin { 'm2e':
  method     => 'p2_director',
  iu         => 'org.eclipse.m2e.feature.feature.group',
  repository => 'http://download.eclipse.org/releases/luna',
  ensure     =>  present,
  require    => Class['eclipse'],
}


# eclipse::plugin { 'emftext':
#   method     => 'p2_director',
#   iu         => 'org.emftext.runtime.feature.feature.group',
#   repository => 'http://emftext.org/update/',
#   ensure     =>  present,
#   require    => Class['eclipse'],
# }



node default {
        include archive::prerequisites
#     	include wget
	include eclipse 
#	notice('Well done!')
}