# NOTE: alpine does not support iconv easily at this time, so the
# optional dependencies for character set detection will not build.
FROM node:alpine

# Get discord-irc (running as root requires --unsafe-perm)
RUN npm install --unsafe-perm -g discord-irc

# Add configurations
ADD config.json discord-irc/config.json

CMD ["discord-irc", "--config", "/discord-irc/config.json"]
