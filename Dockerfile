FROM  ubuntu


WORKDIR /opt/git-action

RUN  apt-get update &&  \
     apt-get install -yq build-essential make git libsqlite3-dev sqlite3 


COPY . /opt/git-action

RUN  make all 

EXPOSE 16000

CMD "bin/git-action"

