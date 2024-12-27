# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . .

# Install any needed packages
RUN npm install

# Make the app accessible on port 8080
EXPOSE 8080

# Run the app
CMD ["node", "sortArray.js"]