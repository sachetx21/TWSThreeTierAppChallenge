FROM node:14 AS backend
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

FROM node:14-alpine
WORKDIR /usr/src/app
COPY --from=backend /usr/src/app /usr/src/app
CMD [ "node", "index.js" ]
