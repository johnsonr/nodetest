FROM node:14-buster-slim

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

USER root 
RUN apt-get update -y; exit 0
RUN apt-get install tcpdump -y

CMD ["node", "index.js"]
