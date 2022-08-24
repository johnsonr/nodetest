FROM node:14-buster-slim@sha256:8e2b1bf00c319363441e3211806c126c7b53f4a9d4c2219f6924af2c7be78872

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
