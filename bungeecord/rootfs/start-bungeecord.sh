#/bin/sh

if [ ! -f /$BUNGEECORD_HOME/BungeeCord.jar ]; then
  echo "Downloading bungeecord jar file, be patient"
  mkdir -p /$BUNGEECORD_HOME/
  cd /$BUNGEECORD_HOME/
  wget http://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar

  #accept eola
  echo "eula=true" > /$BUNGEECORD_HOME/eula.txt

fi

java -jar /$BUNGEECORD_HOME/BungeeCord.jar 2>&1 > /$BUNGEECORD_HOME/last.log &
