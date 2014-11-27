FROM java:8

MAINTAINER Kyle Kelley <rgbkrk@gmail.com>

EXPOSE 25565
EXPOSE 8080

RUN apt-get update
RUN apt-get install nodejs-legacy npm -y

RUN mkdir -p /srv/minecraft

WORKDIR /srv/minecraft

# CanaryMod, latest
#ADD http://canarymod.net/releases/latest-download /srv/minecraft/minecraft_server.jar
# CanaryMod, dev build
ADD https://ci.visualillusionsent.net/job/CanaryMod-Bleeding/140/artifact/target/CanaryMod-1.8.0-1.2.0-SNAPSHOT-shaded.jar /srv/minecraft/minecraft_server.jar
# ScriptCraft, latest
ADD http://scriptcraftjs.org/download/latest/scriptcraft.jar /srv/minecraft/plugins/scriptcraft.jar

RUN chmod a+rwX /srv/minecraft/ -R
RUN echo "eula=true" > eula.txt

CMD ["java", "-Xmx1024M", "-jar", "minecraft_server.jar"]
