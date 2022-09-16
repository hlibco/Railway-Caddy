FROM caddy:alpine
COPY ./public/ /srv/
RUN sed -i 's/:80/:{$PORT}/' /etc/caddy/Caddyfile
RUN sed -i 's|root .*|root * /srv|' /etc/caddy/Caddyfile
# Uncomment the following if you prepare a Caddyfile
#COPY ./Caddyfile /etc/caddy/Caddyfile
