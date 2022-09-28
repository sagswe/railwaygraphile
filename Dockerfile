FROM node:latest
LABEL description="Cakestore Graphql Api"
COPY package.json ./
COPY start.sh ./
RUN npm install
COPY PostgisRegisterTypesPlugin.js ./node_modules/@graphile/postgis/
EXPOSE 5000
CMD ["/bin/sh","start.sh"]