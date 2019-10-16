FROM ubuntu

COPY ./ .

  # && apt-get update \
  # && apt-get install git docker.io docker-compose -y \
  # && service docker restart \
  # && export DOCKER_HOST=localhost \
  # && git clone https://github.com/YACS-RCOS/yacs.git \
  # && cd yacs \
  # && bin/yacs-prepare-development \
  # && cd ..

RUN echo "Run Playbook:" \
  # install ansible
  && apt-get update -y \
  && apt-get install ansible -y \
  && apt install software-properties-common -y \
  # run playbook
  && cat playbook.yml \
  && ansible-playbook playbook.yml

CMD ["bash", "/var/app/yacs/bin/yacs-start-development"]
