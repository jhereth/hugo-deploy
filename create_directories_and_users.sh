#! /usr/bin/env bash

# Usage
# sudo ./create_directories_and_users.sh <blogname>


set -eux

$BLOG = $1

addgroup www-$BLOG # create group for www-data and new user
useradd -G www-$BLOG -N -p '*' -c "$BLOG deploy user,,," $BLOG # deploy user without password
mkdir /var/www/$BLOG
chown -R www-data:www-$BLOG /var/www/$BLOG/
