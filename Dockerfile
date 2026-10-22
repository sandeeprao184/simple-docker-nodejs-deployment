# official Node.js image
FROM node:22-alpine

# Set the working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies (safe even when there are none)
RUN npm install --omit=dev

# Copy application source code
COPY . .

# Document the application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
