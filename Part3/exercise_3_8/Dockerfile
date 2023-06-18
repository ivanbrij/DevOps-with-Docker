FROM node:16-alpine as builder

WORKDIR /usr/src/app

# Copy all of the source code
COPY . .

# Run commands
RUN npm ci && \
    npm run build

# New stage
FROM node:16-alpine
WORKDIR /usr/src/app
EXPOSE 5000
COPY package.json ./
RUN npm install -g serve
COPY --from=builder /usr/src/app/build/ build/
ENTRYPOINT ["serve", "-s", "-l", "5000", "build"]
