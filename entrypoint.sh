#!/bin/sh
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /website/tmp/pids/server.pid

# Create and migrate DB
rake db:create
rake db:migrate

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"