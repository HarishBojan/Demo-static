# # adding linux distribution (alpine is small linux distribution)
# FROM node:13.12.0-alpine

# # set working directory
# WORKDIR /app

# # install app dependencies
# RUN npm install --silent

# # add '/app/node_modules/.bin'to PATH
# ENV PATH /app/node_modules/.bin:$PATH

# # copy all program files in current directory to app directory
# COPY . /app

# # command to execute
# CMD ["npm", "start"]


# FROM node:12.2.0-alpine
FROM node:16-alpine 
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@5.0.1 -g --silent
COPY . ./
CMD ["npm", "start"]