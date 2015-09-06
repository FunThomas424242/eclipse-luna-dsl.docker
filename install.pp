::eclipse{"eclipseluna":
  downloadurl=>'http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz',
  downloadfile=>'eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz',
  pluginrepositories=>['http://download.eclipse.org/releases/luna/']
}



node default {
     	include wget
#	notice('Well done!')
}