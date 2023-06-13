# Start from the alpine image that is smaller but no fancy tools
FROM ubuntu:18.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /home

# Copy the hello.sh file from this location to /usr/src/app/ creating /usr/src/app/hello.sh
COPY curl.sh .

# Alternatively, if we skipped chmod earlier, we can add execution permissions during the build.
# RUN chmod +x hello.sh

# Execute a command with `/bin/sh -c` prefix.
RUN apt-get update
RUN apt-get -y install curl

# When running docker run the command will be ./hello.sh
CMD ./curl.sh
