# Ubuntu is a type of Linux.
FROM ubuntu:22.04

# This means that commands will run in the right directory on the host, because /code is mapped in the docker-compose.yml file.
WORKDIR /code

COPY run.sh /code/
COPY hello.ml /code/

RUN apt-get update && apt-get install -y ocaml

CMD ["./run.sh"]