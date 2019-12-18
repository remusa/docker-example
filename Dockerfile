# FROM [name_of_image]:[version]
FROM node:latest

# Copy package and package-lock files for caching
COPY package*.json ./

# Install required dependencies inside the image
RUN npm install

# COPY [source] [destination]
COPY . .

# Expose the port to be used (the port where the node server runs and the one used in the docker run command)
EXPOSE 3001

# Run the application. Instead of spaces for the commands, separate them inside an array
CMD node src/index.js
