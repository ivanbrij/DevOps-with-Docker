FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

# Copy all of the source code
COPY . .

# Run commands
RUN npm ci --only=production && \
    npm run build && \
    npm install -g serve && \
    useradd -m appuser && chown appuser .

# now we can change the user
USER appuser

# Run the app
CMD ["serve", "-s", "-l", "5000", "build"]
