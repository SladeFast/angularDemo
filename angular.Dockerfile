FROM node:18

WORKDIR /app

COPY angular-app/package*.json ./

RUN npm install -g @angular/cli
RUN npm install

EXPOSE 4200

CMD ["npm", "start"]