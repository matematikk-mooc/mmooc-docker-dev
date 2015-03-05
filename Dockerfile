FROM mmooc/canvas

RUN add-apt-repository ppa:cassou/emacs
RUN add-apt-repository ppa:git-core/ppa

RUN apt-get -y update
RUN apt-get -y install git-core tmux vim emacs24-nox ack-grep postgresql-client man curl aspell
# Emacs prelude:
# RUN bash -c "curl -L http://git.io/epre | sh"


EXPOSE 3000

CMD "/bin/bash -c tmux"
