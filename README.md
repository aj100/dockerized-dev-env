# dockerized-dev-env

### Commands Used
```
docker build -t devbox .

docker run -d -p 3000:3000 --name devbox devbox

docker exec -it devbox bash

docker stop devbox; docker rm devbox
```

### Dev Container Config
The `devbox.json` file is a copy of VSCode's cache for this container. This will automatically install all needed extensions in one go. To use it...
1. Connect to the container (using the remote development plugin)
1. Hit the little gear (see below)
1. Paste in the value of devbox.json
1. Stop, restart, and reconnect to your container.

![](https://raw.githubusercontent.com/aj100/dockerized-dev-env/assets/container-settings.png)

### Repos Used To Try Environment
* https://github.com/junegunn/fzf