# Use a base image with Node.js pre-installed
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Install Git
RUN apt-get update && apt-get install -y git

# Clone the GitHub repository
RUN git clone https://github.com/KarthiR98/analog-clock.git /tmp/repo /tmp/repo

# Copy the desired files or folders from the repository to the container
COPY /tmp/repo/path/to/folder1 /app
COPY /tmp/repo/path/to/folder2 /app
COPY /tmp/repo/path/to/file1.js /app
COPY /tmp/repo/path/to/file2.html /app

# Install the dependencies
COPY package*.json ./
RUN npm install

# Expose the port on which the server will listen
EXPOSE 8080

# Start the server when the container is run
CMD [ "node", "index.js" ]
