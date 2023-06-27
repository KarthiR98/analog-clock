# Use a base image with Node.js pre-installed
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the JS, CSS, and HTML files to the container
COPY index.js .
COPY style.css .
COPY index.html .

# Expose the port on which the server will listen
EXPOSE 8080

# Start the server when the container is run
CMD [ "node", "index.js" ]
