FROM letsdone/ubuntu:focal

LABEL vendor=letsdone \
  maintainer="letsdone" \
  name="openjdk-8-jre base image" \
  build-date="2021-09-10"

RUN apt-get update && apt-get upgrade \
  && apt-get install -y openjdk-8-jre-headless \
  && apt-get clean && apt-get autoclean && apt-get autoremove \
  && rm -rf /var/cache/apt/archives \
  && rm -rf /tmp/*

CMD ["java", "-version"]
