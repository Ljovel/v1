FROM node:current-slim

LABEL MAINTAINER=lao.jovel@farsiman.com

# Copy source code to /src in container
COPY . /src

# Install app and dependencies into /src in container
RUN cd /src; npm install

# Document the port the app listens on
EXPOSE 9090

# Run this command (starts the app) when the container starts
CMD cd /src && node ./app.js
