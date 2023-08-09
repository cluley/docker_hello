FROM ubuntu:16.04
	LABEL maintainer="oo43@yandex.ru"
	RUN apt-get update && apt-get install -y g++ nano net-tools
	WORKDIR /mnt/c/Users/oo43/source/docker/
  	COPY . .
	RUN g++ docker_hello.cpp -o docker_hello
	CMD ["./docker_hello"]