FROM centos:centos7

RUN yum update -y && \
	yum install sudo -y && \
    yum install glibc.i686 -y && \
    yum install gdb.x86_64 -y && \
    yum install redhat-lsb.x86_64 -y && \
    yum install initscripts -y && \
    yum clean all

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/MarkLogic/mlcmd/bin

COPY ["installer/MarkLogic9.rpm", "/tmp/MarkLogic9.rpm"]
COPY ["installer/MarkLogicConverters9.rpm", "/tmp/MarkLogicConverters9.rpm"]
COPY ["usr/sbin/startup.sh", "/usr/sbin/"]

RUN yum install /tmp/MarkLogic9.rpm -y && \
	yum install /tmp/MarkLogicConverters9.rpm -y && \
    rm /tmp/MarkLogic9.rpm && \
    rm /tmp/MarkLogicConverters9.rpm && \
	chmod +x /usr/sbin/startup.sh

EXPOSE 7997 7998 7999 8000 8001 8002

CMD ["/usr/sbin/startup.sh"]