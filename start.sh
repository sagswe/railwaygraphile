npx postgraphile --cors \
  -c postgres://cakestore_postgraphile:cakestore_secret@${{PGHOST}}:${{PGPORT}}/railway \
  -n 0.0.0.0 \
  --schema cakestore \
  --append-plugins @graphile-contrib/pg-simplify-inflector,postgraphile-plugin-connection-filter,@graphile/postgis \
  --owner-connection postgres:///postgres \
  --default-role cakestore_anonymous \
  --jwt-token-identifier cakestore.jwt \
  --jwt-secret caketstorejwtsecret \
  --enhance-graphiql \
  --allow-explain \