FROM elasticsearch:latest
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get update && apt-get install zip 
RUN mkdir -p /usr/share/elasticsearch/plugins/ik 
ADD elasticsearch-analysis-ik-5.1.1.zip /usr/share/elasticsearch/plugins/ik
RUN cd /usr/share/elasticsearch/plugins/ik && unzip elasticsearch-analysis-ik-5.1.1.zip
