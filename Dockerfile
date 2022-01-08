FROM node:14.16.0-alpine3.13
# we create and set a group and user different from the root to 
# prevent a hacker to be able to delete or change any files as 
# a root user if he infiltrates
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
# copy everything in our context dir, which is the current directory, 
# into the current working directory of the image
COPY . . 
RUN npm i
# we should later need to map the port of the host to the container port
# this command does not do this automatically, it just specifies the port number
EXPOSE 3000 
CMD ["npm" "start"]