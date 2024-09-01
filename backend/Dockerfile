# backend/Dockerfile
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
RUN npm init -y
RUN npm install express

# Copy server script
COPY server.js .

# Expose port
EXPOSE 3000

# Start server
CMD ["node", "server.js"]
