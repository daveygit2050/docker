FROM atlassian/bamboo-java-agent:latest

RUN apt-get install -y python-software-properties
RUN apt-get update
RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java8-installer

RUN apt-get install -y oracle-java8-set-default

CMD /root/run-agent.sh
