# Using official node image as a parent image
FROM public.ecr.aws/docker/library/node:20-alpine3.18

# Create working directory
RUN mkdir /app

# Setting the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install AirSignal dependencies
RUN npm install

# AirSignal port
EXPOSE 12776

# Run AirSignal when the container launches
CMD ["node", "server.js"]
