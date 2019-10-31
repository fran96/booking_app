#!/bin/sh
set -e

#Remove a pre-existing server.pid 
rm -f /website/tmp/pids/server.pid

#Create, migrate and seed DB
#rake db:create
#rake db:migrate
#rake db:seed

#exec the container's main process
exec "$@"