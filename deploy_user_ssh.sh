#! /usr/bin/env bash

# Usage:
# 1. First sudo to deploy user `sudo su - www-$BLOG`
# 2. run `./deploy_user_ssh.sh $BLOG

ssh-keygen -t rsa -b 2048 -C "$BLOG deploy user" -f .ssh/id_${BLOG}_deploy
cat .ssh/id_${BLOG}_deploy.pub >> .ssh/authorized_keys
