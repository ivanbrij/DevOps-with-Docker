FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

# Copy all of the source code
COPY . .

# Compile
RUN go build

# create the appuser
RUN adduser appuser

# change the owner of current dir to appuser
RUN chown appuser .

# now we can change the user
USER appuser

# Run the app
CMD ./server
