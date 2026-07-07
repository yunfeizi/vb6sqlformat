FROM node:18-alpine
WORKDIR /app
# 复制依赖
COPY package*.json ./
RUN npm install
# 复制全部源码
COPY . .
EXPOSE 3000
CMD ["npm", "start"]