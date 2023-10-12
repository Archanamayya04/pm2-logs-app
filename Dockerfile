FROM node:14
WORKDIR /usr/src/app
RUN apt-get update && apt-get upgrade -y
RUN npm install -g pm2
COPY package*.json ./
RUN npm install
COPY app.js /usr/src/app/
COPY index.html /usr/src/app/
COPY pm2.config.js /usr/src/app/
EXPOSE 3000
RUN pm2 start pm2.config.js
CMD ["pm2-runtime", "app.js"]
