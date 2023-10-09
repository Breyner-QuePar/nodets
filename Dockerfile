# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install


# Copy the rest of the app's source code to the working directory
COPY . .

RUN npm run build

# Expose port 3000 for the app to listen on
EXPOSE 3000

# Start the app
CMD [ "node", "index.js" ]
