# TODO: For now we only generate a docker Image but in the future, we can also output the static files as an artifact from here

FROM nginx
COPY ./out /usr/share/nginx/html
