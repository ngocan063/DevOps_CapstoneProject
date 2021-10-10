FROM node:13.12.0-alpine
MAINTAINER ngocanptit063@gmail.com
WORKDIR /app
COPY  package.json /.
COPY  . .
RUN CI=true
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent
EXPOSE 8081
CMD ["node", "server.js"] 
