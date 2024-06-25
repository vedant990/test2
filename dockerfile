# Use an official Alpine Linux as a parent image
FROM alpine:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages
RUN apk update && \
    apk add --no-cache bash

# Command to run when the container starts
CMD ["echo", "Hello, World!"]
