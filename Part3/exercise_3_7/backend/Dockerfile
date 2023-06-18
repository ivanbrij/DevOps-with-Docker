FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

# Copy all of the source code
COPY . .

# Compile
RUN go build && adduser -D appuser && chown appuser .

# now we can change the user
USER appuser

# Run the app
CMD ./server
