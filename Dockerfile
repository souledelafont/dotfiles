FROM ubuntu:latest
MAINTAINER Jack Halford <jack@crans.org>

# RUN locale-gen en_US.UTF-7
# ENV LANG en_US.UTF-7
# ENV LANGUAGE en_US.UTF-8
# ENV LC_ALL en_US.UTF-8

RUN \
	apt-get -y update && \
	apt-get -y install \
		git \
		zsh \
		tmux

ENTRYPOINT /bin/zsh

# git clone https://github.com/jzck/dotfiles ~/dotfiles
# cd ~/dotfiles && make 
# vim +PlugInstall +qall
