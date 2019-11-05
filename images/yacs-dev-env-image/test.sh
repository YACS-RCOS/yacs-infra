docker build . -t yacs-dev-env
docker run -d --privileged --network=host yacs-dev-env:latest
