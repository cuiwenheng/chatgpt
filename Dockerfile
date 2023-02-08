# 选择一个体积小的镜像 (~5MB)
FROM node:12-alpine

# 环境变量设置为生产环境
# ENV NODE_ENV production
#RUN mkdir /chatgpt
WORKDIR /chatgpt
# 更好的根据 Image Layer 利用缓存
ADD package.json package.json
RUN npm i
ADD . .
# 配置服务及数据库迁移
# RUN npm run config --if-present && npm run migrate --if-present

EXPOSE 30003
CMD npm start