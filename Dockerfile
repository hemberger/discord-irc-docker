FROM node:latest

RUN apt-get update && apt-get install -y supervisor

# Get discord-irc (running as root requires --unsafe-perm)
RUN npm install --unsafe-perm -g discord-irc

# Add supervisor configs
ADD supervisord.conf supervisord.conf

# Add configurations
ADD config.json discord-irc/config.json

CMD ["-n", "-c", "/supervisord.conf"]
ENTRYPOINT ["/usr/bin/supervisord"]
