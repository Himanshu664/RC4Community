FROM node:14

# Copy the current directory contents into the container working directory
COPY . /rc4community/

# install dependencies for client
RUN npm install --prefix rc4community

# Set the working directory
WORKDIR /rc4community

# Make port 8090 available to the world outside this container
EXPOSE 8090

# Run the app when the container launches
CMD ["npm", "run", "start"]