#!/usr/bin/env bash
# Example run: bash deploy.sh youngr7@yacs.cs.rpi.edu production

SSHHOST=$1; ENV=$2
echo "SSHHOST: $SSHHOST"
echo "ENV: $ENV"
# ssh into server and run update-services script
ssh $SSHHOST < update-services-$ENV.sh
