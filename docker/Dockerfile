FROM node:20-alpine

LABEL version="1.0.0"

RUN apk add curl

WORKDIR /app

COPY package*.json ./
COPY node_modules/ ./node_modules/
COPY build/ ./build

ENV PORT=3000

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD curl -f http://localhost:$PORT/ || exit 1

ENTRYPOINT npm start