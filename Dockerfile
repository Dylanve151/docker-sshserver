FROM debian
RUN apt-get update && apt-get install -y \
  openssh-server \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN echo "AuthorizedKeysFile /config/authorized_keys" > /etc/ssh/sshd_config.d/AuthorizedKeysFile.conf
VOLUME ["/config"]
RUN touch /config/authorized_keys
RUN mkdir /run/sshd
CMD [ "/usr/sbin/sshd -d" ]
