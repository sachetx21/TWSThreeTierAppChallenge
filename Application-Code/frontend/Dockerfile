FROM node:14 AS frontend
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

FROM node:14-alpine
WORKDIR /usr/src/app
COPY --from=frontend /usr/src/app /usr/src/app
CMD [ "npm", "start" ]
