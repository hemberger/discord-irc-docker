FROM node:latest

# Get discord-irc (running as root requires --unsafe-perm)
RUN npm install --unsafe-perm -g discord-irc

# Add configurations
ADD config.json discord-irc/config.json

CMD ["--config", "/discord-irc/config.json"]
ENTRYPOINT ["discord-irc"]
