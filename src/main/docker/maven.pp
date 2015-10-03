$central = {
    id => "myrepo",
    username => "myuser",
    password => "mypassword",
    url => "http://repo.acme.com",
    mirrorof => "external:*",      # if you want to use the repo as a mirror, see maven::settings below
  }

  $proxy = {
    active => true, #Defaults to true
    protocol => 'http', #Defaults to 'http'
    host => 'http://proxy.acme.com',
    username => 'myuser', #Optional if proxy does not require
    password => 'mypassword', #Optional if proxy does not require
    nonProxyHosts => 'www.acme.com', #Optional, provides exceptions to the proxy
  }

  # Install Maven
  class { "maven::maven":
    version => "3.2.5", # version to install
    # you can get Maven tarball from a Maven repository instead than from Apache servers, optionally with a user/password
    repo => {
      #url => "http://repo.maven.apache.org/maven2",
      #username => "",
      #password => "",
    }
  } ->

  # Setup a .mavenrc file for the specified user
  maven::environment { 'maven-env' : 
      user => 'root',
      # anything to add to MAVEN_OPTS in ~/.mavenrc
      maven_opts => '-Xmx1384m',       # anything to add to MAVEN_OPTS in ~/.mavenrc
      maven_path_additions => "",      # anything to add to the PATH in ~/.mavenrc

  } ->

  # Create a settings.xml with the repo credentials
  maven::settings { 'maven-user-settings' :
    mirrors => [$central], # mirrors entry in settings.xml, uses id, url, mirrorof from the hash passed
    servers => [$central], # servers entry in settings.xml, uses id, username, password from the hash passed, privateKey
    proxies => [$proxy], # proxies entry in settings.xml, active, protocol, host, username, password, nonProxyHosts
    user    => 'developer',
  }

  # defaults for all maven{} declarations
  Maven {
    user  => "maven", # you can make puppet run Maven as a specific user instead of root, useful to share Maven settings and local repository
    group => "maven", # you can make puppet run Maven as a specific group
    repos => "http://repo.maven.apache.org/maven2"
  }

maven { "/tmp/maven-core-3.2.5.jar":
    id => "org.apache.maven:maven-core:3.2.5:jar",
    repos => ["central::default::http://repo.maven.apache.org/maven2","http://mirrors.ibiblio.org/pub/mirrors/maven2"],
  }

  maven { "/tmp/maven-core-3.2.5-sources.jar":
    groupid    => "org.apache.maven",
    artifactid => "maven-core",
    version    => "3.2.5",
    classifier => "sources",
  }
