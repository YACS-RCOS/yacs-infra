#!/usr/bin/env bash
ENV="development"

# enter yacs directory
cd yacs

# get latest version (of develop for testing)
git pull
git checkout develop

# stop, prepare, purge db, and start
for COMMAND in stop prepare purge start
do
  echo "------------------------------------------------"
  echo "------------------------------------------------"
  echo ">> RUNNING ./bin/yacs-$COMMAND-$ENV"
  echo "------------------------------------------------"
  echo "------------------------------------------------"
  # run std cmds
  if [[ "$COMMAND" != "start" ]]; then
    ./bin/yacs-$COMMAND-$ENV
  fi
  # run start in background so we can run and exit script
  if [[ "$COMMAND" == "start" ]]; then
    echo "development started in background"
    nohup ./bin/yacs-$COMMAND-$ENV &
    sleep 20
    docker ps
  fi
done

# finish
exit
