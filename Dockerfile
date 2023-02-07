FROM ubuntu:latest

ENV TZ=Asia/Tokyo \
    JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get -y update \
    && apt-get -y install python3-pip maven software-properties-common \
    && add-apt-repository ppa:openjdk-r/ppa \
    && apt-get install -y openjdk-8-jdk \
    && rm -rf /var/lib/apt/lists/*

COPY . /usr/src/poc
WORKDIR /usr/src/poc

RUN apt-get install -y openjdk-8-jre && pip install -r requirements.txt
RUN mvn clean && mvn package

ENV SECRET_VALUE='FLAG{This_is_secret_value}'
CMD ["python3", "app.py"]
