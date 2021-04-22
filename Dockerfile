FROM node:15.14.0-alpine3.10

MAINTAINER jayson.vacaro@gmail.com

RUN apk add --no-cache --virtual .persistent-deps \
        curl \
        openssl \
        # for node-sass module
        make \
        gcc \
        g++ \
        python2 \
        py-pip \
        musl \
        nss \
        freetype \
        freetype-dev \
        harfbuzz \
        ca-certificates \
        ttf-freefont \
    # Install node packages
    && npm install --silent --save-dev -g \
        typescript

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

CMD ["npm", "-v"]
