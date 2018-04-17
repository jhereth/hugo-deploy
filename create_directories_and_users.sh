#! /usr/bin/env bash

# Usage
# sudo ./create_directories_and_users.sh <blogname>


set -eux

BLOG=$1

useradd -g www-data -m -N -p '*' -c "$BLOG deploy user,,," www-$BLOG # deploy user without password
mkdir /var/www/$BLOG
chown -R www-$BLOG:www-data /var/www/$BLOG/
