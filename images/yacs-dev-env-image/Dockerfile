FROM ubuntu:16.04
COPY . ./

RUN  bash ./install-base-dependencies.sh \
  && bash ./bootstrap.sh

CMD ["bash", "up.sh"]
