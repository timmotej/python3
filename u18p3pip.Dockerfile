FROM ubuntu:18.04

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
COPY [ "install_python3_pip_ubuntu18.sh", "exec_commands.sh", "/" ]
RUN bash install_python3_pip_ubuntu18.sh

