#!/bin/bash
curl -sSL https://get.docker.com/ | sh
usermod -aG docker root
curl -L https://raw.githubusercontent.com/docker/docker-ce/master/components/engine/contrib/completion/bash/docker > /etc/bash_completion.d/docker
