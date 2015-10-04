## git-maven-eclipse.docker 

# Ziele

Ein Projekt zum Erstellen eines Docker Containers mit folgenden installierten Komponenten:

* git
* puppet
* java 8
* maven
* eclipse luna
* eclipse  plugins

Der Container soll aufgerufen werden über:

 docker run --name "YourContainerName" -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix funthomas424242/git-maven-eclipse.docker:base
 docker start YourContainerName


und soll out of the box eine fertig konfigurierte Eclipse Umgebung starten.

# Benutzung

1. Für die tägliche Arbeit soll der Container wie oben beschrieben gestartet werden.
2. Dann sollen die Projekte darin bearbeitet werden.
3. Am Tagesende wird die Eclipse geschlossen und damit auch der Container gestoppt.
4. Am nächsten Tag kann der Container wieder wie oben beschrieben gestartet werden und die Arbeit fortgesetzt werden.

#Quellen

* http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/
* http://www.cheatography.com/funthomas424242/cheat-sheets/docker/ (Docker Cheat Sheet)
