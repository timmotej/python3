FROM centos:7

COPY [ "install_python3_centos7.sh", "exec_commands.sh", "/" ]
RUN bash install_python3_centos7.sh

