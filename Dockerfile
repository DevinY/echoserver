FROM node
RUN npm install -g laravel-echo-server
EXPOSE 6001
CMD laravel-echo-server start
