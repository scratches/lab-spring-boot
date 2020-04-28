FROM quay.io/eduk8s/workshop-dashboard:master

USER root

RUN cd /usr/local && \
    curl -L https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.7%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.7_10.tar.gz > jdk.tgz && \
    tar -zxf jdk.tgz && mv jdk-11* jdk && rm jdk.tgz && mkdir -p bin && ln -s /usr/local/jdk/bin/* bin

USER 1001

COPY --chown=1001:0 . /home/eduk8s/

ENV JAVA_HOME=/usr/local/jdk
