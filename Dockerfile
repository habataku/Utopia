FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY package*.json .

RUN npm install

COPY main main/
COPY main/uv/*.js main/uv/

EXPOSE 8080

CMD ["npm", "start"]
