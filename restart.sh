#!/bin/sh

echo "Restarting Unicorn ($unicorn_pid)"
ps aux | grep 'unicorn' | awk '{print $2}' | xargs sudo kill -9
bundle exec unicorn -E production -c config/unicorn.rb -D
