FROM arm32v7/node:latest

WORKDIR /opt/roomba-exporter

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "index.js" ]
