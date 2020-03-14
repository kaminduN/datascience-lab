#ARG ubuntu_version=18.04
#FROM ubuntu:${ubuntu_version} 
#Use ubuntu 18:04 as your base image
FROM ubuntu:18.04

#Any label to recognise this image.
LABEL image=Spark-base-image

ARG DEBIAN_FRONTEND=noninteractive
ENV SPARK_VERSION=2.4.5
ENV HADOOP_VERSION=2.7
#Run the following commands on my Linux machine

#install the below packages on the ubuntu image
# Add Dependencies for PySpark
RUN apt-get update -qq && \
    apt-get install -y gnupg2 wget gettext-base unzip openjdk-8-jdk scala \
    python3 python3-pip python3-numpy python3-matplotlib python3-scipy python3-pandas python3-simpy && \
    apt-get clean
#Download the Spark binaries from the repo
WORKDIR /

RUN wget --no-verbose https://downloads.apache.org/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz --output-document=spark-bin-hadoop.tgz
# Untar the downloaded binaries , move them the folder name spark and add the spark bin on my class path
RUN tar -xzf /spark-bin-hadoop.tgz && mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark && \
    echo "export PATH=$PATH:/spark/bin" >> ~/.bashrc && \
    rm /spark-bin-hadoop.tgz
#    mv spark-bin-hadoop spark && \
#Expose the UI Port 4040
EXPOSE 4040
