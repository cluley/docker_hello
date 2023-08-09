FROM ubuntu:16.04
	LABEL maintainer="oo43@yandex.ru"
	RUN apt-get update && apt-get install -y g++ nano net-tools
	WORKDIR /root/docker_hello
  	COPY . /root/docker_hello
	RUN g++ docker_hello.cpp -o docker_hello
	CMD ["./docker_hello"]
