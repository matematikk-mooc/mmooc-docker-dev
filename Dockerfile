FROM mmooc/canvas

RUN apt-get -y update

RUN apt-get -y install tmux vim emacs23-nox ack-grep postgresql-client

EXPOSE 3030

CMD "/bin/bash -c tmux"
