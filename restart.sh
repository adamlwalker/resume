OUTPUT="$(tail /home/rails/tmp/pids/server.pid)"
pkill "$(OUTPUT)"
