FROM node:14.16.0-alpine3.13
WORKDIR /app
# copy everything in our context dir, which is the current directory, 
# into the current working directory of the image
COPY . . 