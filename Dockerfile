# Use the official Node.js 14 image as the base
FROM node:14

ENV TEST2=TEST1
RUN echo "The ENV variable value is $TEST2"

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Set the environment variable for the port
ENV PORT=3000

# Expose port 3000 for the application
EXPOSE 3000

# Define the command to run the application
CMD [ "npm", "start" ]
