# FROM [name_of_image]:[version]
FROM node:latest

# COPY [source] [destination]
COPY . .

# Install required dependencies inside the image
RUN npm install

# Run the application. Instead of spaces for the commands, separate them inside an array
CMD node src/index.js
