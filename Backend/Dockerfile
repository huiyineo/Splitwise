#define the latest nodejs image  to build from
FROM node:latest
#create a working directory
WORKDIR /usr/src/Splitwise
#copy package.json file under the working directory 
COPY package.json /usr/src/Splitwise/
# install all the dependencies 
RUN npm install
#copy all your files under the working directory
COPY . /usr/src/Splitwise
#expose the port 4000
EXPOSE 4000
#start nodejs server 
CMD npm start