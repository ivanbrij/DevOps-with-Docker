FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

# Copy all of the source code
COPY . .

# Install packages
RUN npm install

#ENV REACT_APP_BACKEND_URL=http://localhost:8080

# Build
RUN npm run build
RUN npm install -g serve

# Run the app
CMD ["serve", "-s", "-l", "5000", "build"]
