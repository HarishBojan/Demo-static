# adding linux distribution (alpine is small linux distribution)
FROM node:alpine

# set working directory
WORKDIR /app

# install app dependencies
RUN npm install --silent

# add '/app/node_modules/.bin'to PATH
ENV PATH /app/node_modules/.bin:$PATH

# copy all program files in current directory to app directory
COPY . /app

# command to execute
CMD ["npm", "start"]