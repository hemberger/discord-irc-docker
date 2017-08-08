Docker container for [discord-irc](https://github.com/reactiflux/discord-irc), based on [caktux/slackbridge](https://github.com/caktux/slackbridge).
===

### Installation
```
git clone https://github.com/hemberger/discord-irc-docker
```

### Configuration

Copy `config.json.sample` to `config.json` and edit to your liking.

### Building and running

Build the docker container and run it with:

```
cd discord-irc-docker
docker-compose up --build -d
```
