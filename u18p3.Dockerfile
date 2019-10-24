FROM ubuntu:18.04

COPY [ "install_python3_ubuntu18.sh", "exec_commands.sh", "/" ]
RUN bash install_python3_ubuntu18.sh

