FROM java
RUN apt-get update -y
RUN apt-get install -y wget
RUN mkdir /tmp/unleashed
WORKDIR /tmp/unleashed
RUN wget http://www.creeperrepo.net/FTB2/modpacks%5EUnleashed%5E1_1_7%5EUnleashed-server.zip
RUN unzip *.zip -d /opt/unleashed
WORKDIR /opt/unleashed
RUN rm -Rf /tmp/unleashed
RUN find mods | rename 's/PowerConverters(.*)\.disabled/PowerConverters$1/g'

EXPOSE 25565
CMD ["sh", "ServerStart.sh"]
