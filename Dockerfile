FROM lizzieb1416/node-image:1.0.0:1.0.0 as builder

WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build

# TODO: For now we only generate a docker Image but in the future, we can also output the static files as an artifact from here

FROM nginx
COPY --from=builder ./app/out /usr/share/nginx/html
