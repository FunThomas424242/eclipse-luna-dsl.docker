## eclipse-luna-dsl.docker 

# Ziele

Ein Projekt zum Erstellen eines Docker Containers mit folgenden installierten Komponenten:

* git
* puppet
* java 8
* maven
* eclipse luna
* eclipse dsl plugins

Der Container soll aufgerufen werden über:

  docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix containerID:version

und soll out of the box eine fertig konfigurierte Eclipse Umgebung starten.

# Benutzung

1. Für die tägliche Arbeit soll der Container wie oben beschrieben gestartet werden.
2. Dann sollen die Projekte darin bearbeitet werden.
3. Am Tagesende wird die Eclipse geschlossen und damit auch der Container gestoppt.
4. Am nächsten Tag kann der Container wieder wie oben beschrieben gestartet werden und die Arbeit fortgesetzt werden.