FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

# Copy all of the source code
COPY . .

# Compile
RUN go build

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000

# Run the app
CMD ./server
