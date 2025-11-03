FROM node:18

# Set environment variables (avoid using real secrets in Dockerfile)
ENV MONGO_DB_USERNAME=root \
    MONGO_DB_PASSWORD=root

# Create and set working directory
WORKDIR /test-app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json .

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the app port (optional)
# EXPOSE 5050
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
