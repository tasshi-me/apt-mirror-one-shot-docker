#!/usr/bin/env bash

su - apt-mirror -c "/usr/bin/apt-mirror > /var/spool/apt-mirror/var/cron.log"
su - apt-mirror -c "/var/spool/apt-mirror/var/clean.sh >> /var/spool/apt-mirror/var/cron.log;"
