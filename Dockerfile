FROM debian
RUN apt-get update && apt-get install -y \
  openssh-server \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD [ "/bin/bash" ]
