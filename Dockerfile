FROM node:18

WORKDIR /app

COPY package.json ./

RUN npm install

ENTRYPOINT ["npx", "qrcode", "--width", "8192"]
CMD ["Hello world"]
