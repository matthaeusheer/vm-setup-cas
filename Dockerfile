FROM ubuntu:22.04

WORKDIR /script

ENV TERM xterm-256color

COPY vm_install.sh .
COPY install_oh_my_zsh.sh .

RUN chmod +x ./vm_install.sh
RUN chmod +x ./install_oh_my_zsh.sh

RUN ./vm_install.sh

