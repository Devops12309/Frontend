FROM node:18.18.2

WORKDIR /root/frontend

COPY package*.json ./

RUN npm i -f

COPY . .

RUN npm run build

CMD ["npm", "run", "start"]
#CMD ["npm", "run", "dev"]
