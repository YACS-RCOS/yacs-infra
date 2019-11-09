#!/usr/bin/env bash
# Example run: bash deploy.sh user@yacs.cs.rpi.edu "production" "master"

SSHHOST=$1; ENV=$2; BRANCH=$3
echo "SSHHOST: $SSHHOST"
echo "ENV: $ENV"
# ssh into server and run update-services script
ssh $SSHHOST 'bash -s' -- < update-services.sh $ENV $BRANCH
