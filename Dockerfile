FROM csepely/syslog-ng:latest
RUN apt-get update &&\
  apt-get upgrade -y &&\
  apt-get install -y mariadb-server apg &&\  
  rm -rf /var/lib/apt/lists/*
RUN ln -rs /docker.init/modules.available/mariadb.sh /docker.init/modules.enabled/001-mariadb.sh
EXPOSE 3306
