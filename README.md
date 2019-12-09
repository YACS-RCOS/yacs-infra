# YACS Infrastructure (IaC)

## Info
Growing Infrastructure as Code repository to manage images, scripts and jobs

## Folder structure
- `./images` *(Docker images, bootstrapped with Ansible)*
- `./scripts` *(Scripts to use in Jenkins)*

## Persistent Services

Jenkins - `kvm3.cs.rpi.edu:8080`

## Deploy Production

In Jenkins: Navigate to `Deploy/yacs-prod` & Click **Build Now** (Should take 3 minutes)

## Deploy Dev

**Dev Branch:** `develop` in YACS-RCOS/yacs

On push to develop, the update source is deployed to `kvm3.cs.rpi.edu`

*or*

In Jenkins: Navigate to `Deploy/yacs-dev` & Click **Build Now** (Should take 3 minutes)

