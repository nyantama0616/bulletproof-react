FROM node:14.21.3

RUN npm uninstall -g yarn
RUN npm install -g yarn@1.22 --force

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install

COPY . .
