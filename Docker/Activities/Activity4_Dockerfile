# Specify Base Image
FROM docker.io/node:18-alpine

# Work Directory
WORKDIR /usr/app

#Copy the package.json
COPY package.json ./

# Install the required tools
RUN npm install

# COPY the other files in to the container
COPY ./ ./ 

# Startup Command
CMD ["npm", "start"]