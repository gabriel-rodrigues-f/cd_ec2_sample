FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost DBPORT=5432
ENV USER=root PASSWORD=root DBNAME=root

COPY ./main main

# Concede permissão de execução ao arquivo main
RUN chmod +x main

CMD ["./main"]