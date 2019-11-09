#!/usr/bin/env bash
ENV="production"

# enter yacs directory
cd yacs

# get latest version from master (for production)
git pull
git checkout master

# stop, prepare, purge db, and start
for COMMAND in stop prepare purge start
do
  # inform
  echo "------------------------------------------------"
  echo "------------------------------------------------"
  echo ">> RUNNING ./bin/yacs-$COMMAND-$ENV"
  echo "------------------------------------------------"
  echo "------------------------------------------------"
  # run
  ./bin/yacs-$COMMAND-$ENV
done

# finish
exit
