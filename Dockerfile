FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm i
EXPOSE 3000
CMD [ "node", "src/app.js" ]