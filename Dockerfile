FROM mmooc/canvas

RUN add-apt-repository ppa:cassou/emacs
RUN add-apt-repository ppa:git-core/ppa

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install git-core tmux vim emacs24-nox ack-grep postgresql-client man curl aspell

RUN cd /opt/canvas-lms && git fetch --unshallow

### Emacs
# prelude:
RUN bash -c "curl -L http://git.io/epre | sh" && emacs --script /root/.emacs.d/init.el


### Tmux
ADD tmux.conf /root/.tmux.conf

EXPOSE 3000

CMD /usr/bin/tmux -2
