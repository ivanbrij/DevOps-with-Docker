FROM golang:1.16-alpine as builder

WORKDIR /usr/src/app
# Copy all of the source code
COPY . .
# Compile
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

# New stage
FROM scratch
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/server .
EXPOSE 8080
ENTRYPOINT [ "/usr/src/app/server" ]
