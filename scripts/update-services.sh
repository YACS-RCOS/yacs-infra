#!/usr/bin/env bash
ENV=$1
BRANCH=$2

# enter yacs directory
cd yacs

# get latest version (of develop for testing)
git pull
git checkout $BRANCH

# stop, prepare, purge db, and start
for COMMAND in stop prepare purge start
do
  echo "------------------------------------------------"
  echo "------------------------------------------------"
  echo ">> RUNNING ./bin/yacs-$COMMAND-$ENV"
  echo "------------------------------------------------"
  echo "------------------------------------------------"
  # run std cmds
  if [[ "$COMMAND" != "start" || "$ENV" == "production" ]]; then
    ./bin/yacs-$COMMAND-$ENV
  fi
  # run start in background so we can run and exit script
  if [[ "$COMMAND" == "start" && "$ENV" == "development" ]]; then
    nohup ./bin/yacs-$COMMAND-$ENV &
    sleep 20
    docker ps
  fi
done

# finish
exit
