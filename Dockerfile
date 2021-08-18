FROM node:14-buster-slim@sha256:02fe8fad5bd0a65c7e50e8e53c2462d915cf73b6c9e25640f04f588fe8a77d09

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
