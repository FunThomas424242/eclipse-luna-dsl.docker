# put this somewhere global, like site.pp
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }


# save current vars
file { "/tmp/facts.yaml":
    content => inline_template("<%= scope.to_hash.reject { |k,v| !( k.is_a?(String) && v.is_a?(String) ) }.to_yaml %>"),
}


# puppetlabs-concat
exec { "puppetlabs-concat-modul":
    command => "puppet module install --force puppetlabs-concat",
}

# counsyl-sys
exec { "counsyl-sys-modul":
    command => "puppet module install --force counsyl-sys",
}


# gini-archive
exec { "gini-archive-modul":
    command => "puppet module install --force gini-archive",
}

#
# puppetlabs
#

# stdlib
exec { "stdlib-modul":
    command => "puppet module install --force puppetlabs-stdlib",
}

# apt
exec { "apt-modul":
    command => "puppet module install --force puppetlabs-apt",
}

# vcsrepo 
exec { "vcsrepo-modul":
    command => "puppet module install --force puppetlabs-vcsrepo",
}

# git 
exec { "git-modul":
    command => "puppet module install --force puppetlabs-git",
}


#
# maestrodev
#


# wget 
exec { "masestrodev-wget-modul":
    command => "puppet module install --force maestrodev-wget",
}

# maven 
exec { "maven-modul":
    command => "puppet module install --force maestrodev-maven",
}

# ant 
exec { "ant-modul":
    command => "puppet module install --force maestrodev-ant",
}


#
# runthebusiness
#

# eclipse 
exec { "eclipse-modul":
    command => "puppet module install --force runthebusiness-eclipse",
}

