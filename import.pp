# put this somewhere global, like site.pp
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }


# save current vars
file { "/tmp/facts.yaml":
    content => inline_template("<%= scope.to_hash.reject { |k,v| !( k.is_a?(String) && v.is_a?(String) ) }.to_yaml %>"),
}


# puppetlabs-concat
exec { "puppetlabs-concat-modul":
    command => "puppet module install --force puppetlabs-concat",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}

# counsyl-sys
exec { "counsyl-sys-modul":
    command => "puppet module install --force counsyl-sys",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}


# gini-archive
exec { "gini-archive-modul":
    command => "puppet module install --force gini-archive",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}

#
# puppetlabs
#

# stdlib
exec { "stdlib-modul":
    command => "puppet module install --force puppetlabs-stdlib",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}

# apt
exec { "apt-modul":
    command => "puppet module install --force puppetlabs-apt",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}

# vcsrepo 
exec { "vcsrepo-modul":
    command => "puppet module install --force puppetlabs-vcsrepo",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}

# git 
exec { "git-modul":
    command => "puppet module install --force puppetlabs-git",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}


#
# maestrodev
#


# wget 
exec { "masestrodev-wget-modul":
    command => "puppet module install --force maestrodev-wget",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}

# maven 
exec { "maven-modul":
    command => "puppet module install --force maestrodev-maven",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}

# ant 
exec { "ant-modul":
    command => "puppet module install --force maestrodev-ant",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}


#
# mjanser
#

# eclipse 
exec { "eclipse-modul":
    command => "puppet module install --force mjanser-eclipse",
#    path    => "/usr/local/bin/:/bin/:/usr/bin",
}

