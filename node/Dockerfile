FROM mkenney/npm

EXPOSE 3000

WORKDIR /var/www
CMD npm install && npm run-script build && node /var/www/build/server.js