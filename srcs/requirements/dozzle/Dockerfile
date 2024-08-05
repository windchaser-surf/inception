# Use Debian as the base image
FROM debian:buster-slim

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update the package lists and install necessary tools
RUN apt-get update && \
    apt-get install -y curl git build-essential

# Install Go
RUN curl -O https://dl.google.com/go/go1.22.linux-amd64.tar.gz && \
    tar -xvf go1.22.linux-amd64.tar.gz && \
    mv go /usr/local

# Set up GOPATH and GOROOT
ENV GOPATH=/go
ENV GOROOT=/usr/local/go
ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Set the working directory
WORKDIR /go/src/dozzle

# Copy the Dozzle source code into the container
COPY . .

# Compile Dozzle
RUN go build -o dozzle

# Run Dozzle
CMD ["./dozzle"]
