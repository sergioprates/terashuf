FROM alpine:3.17.1

ENV MEMORY=2.4762

WORKDIR /app

COPY . .

RUN apk update 
RUN apk add --no-cache g++
RUN apk add --no-cache make

RUN make

ENTRYPOINT ["./terashuf"]