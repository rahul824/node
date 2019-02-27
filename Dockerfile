FROM alpine:3.5

# Update
RUN apk add --update nodejs

# Install application dependencies
COPY package.json /src/package.json
RUN cd /src; npm install

# Bundle app source
COPY . /src

EXPOSE  8080
CMD ["node", "/src/server.js"]
