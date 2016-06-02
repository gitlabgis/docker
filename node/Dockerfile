FROM mkenney/npm

EXPOSE 3000

WORKDIR /var/www
CMD npm install --quiet && npm run-script build && node /var/www/build/server.js