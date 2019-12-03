# Docs for scripts

## `uptime.sh`
Runs on Jenkins every 10 minutes using Jenkins job, see kvm3.cs.rpi.edu:8080 for Jenkins instance

## `update-services.sh`
Restarts services using source from given branch using either production/development deploy config

## `deploy.sh`
Runs update-services on a given host specified through env vars. See deploy.sh for example run.
