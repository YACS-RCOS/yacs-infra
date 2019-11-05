docker build . -t yacs-dev-env
docker run -priv-d -p 7777:7777 yacs-dev-env:latest
