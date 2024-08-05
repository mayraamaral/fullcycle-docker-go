FROM golang:1.22.5 AS build

WORKDIR /usr/app

COPY . . 

RUN go build .

FROM scratch

COPY --from=build /usr/app/hello .

ENTRYPOINT ["./hello"]
