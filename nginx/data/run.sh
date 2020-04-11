#!/usr/bin/env bashio
set -e

bashio::log.info "Running nginx..."
exec nginx -c "$(bashio::config "config")" < /dev/null
