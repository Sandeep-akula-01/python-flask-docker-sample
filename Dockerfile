FROM amazonlinux:latest
LABEL maintainer="Sandeep <akulasandeep01@gmail.com>"

RUN yum update -y
RUN yum install python3 python3-pip -y

WORKDIR /opt/python_webapp

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY app/. .

EXPOSE 8080

CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]

