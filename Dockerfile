FROM golang:1.20
COPY . /go/src/sample
WORKDIR /go/src/sample
RUN go get -u github.com/cosmtrek/air
RUN go get -u github.com/go-delve/delve/cmd/dlv
CMD ["air", "-c", ".air.toml"]**
