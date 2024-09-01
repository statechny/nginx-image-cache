# nginx/Dockerfile
FROM openresty/openresty:stable

# Copy Nginx configuration
COPY conf.d/ /etc/nginx/conf.d/

# Copy Lua scripts
COPY lua/ /etc/nginx/lua/
