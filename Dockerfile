FROM alpine:latest

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.143.1/hugo_0.143.1_linux-amd64.tar.gz && \
    tar -xzvf hugo_0.143.1_linux-amd64.tar.gz; rm -rf hugo_0.143.1_linux-amd64.tar.gz

WORKDIR /app
COPY . .

CMD ["/hugo", "serve", "--baseURL=https://ahspw.ir", "--bind=0.0.0.0", "--port=443"]
