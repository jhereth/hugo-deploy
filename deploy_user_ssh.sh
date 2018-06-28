#!/usr/bin/env bash

# Usage:
# 1. First sudo to deploy user `sudo su - www-$BLOG`
# 2. run `./deploy_user_ssh.sh $BLOG

set -eu

BLOG=$1


mkdir -p $HOME/.ssh
ssh-keygen -t rsa -b 2048 -C "$BLOG deploy user" -f $HOME/.ssh/id_${BLOG}_deploy
cat $HOME/.ssh/id_${BLOG}_deploy.pub >> $HOME/.ssh/authorized_keys

# Keys have to be copied to localhost
echo "Save keys on local machine"
echo "echo '"
cat $HOME/.ssh/id_${BLOG}_deploy
echo "' > id_${BLOG}_deploy"
echo "echo '"
cat $HOME/.ssh/id_${BLOG}_deploy.pub
echo "' > id_${BLOG}_deploy.pub"

