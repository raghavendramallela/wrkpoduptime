FROM openresty/openresty:jammy

# Copy startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

RUN mkdir -p /usr/local/openresty/nginx/client_body_temp && \
    mkdir -p /usr/local/openresty/nginx/proxy_temp && \
    mkdir -p /usr/local/openresty/nginx/fastcgi_temp && \
    mkdir -p /usr/local/openresty/nginx/uwsgi_temp && \
    mkdir -p /usr/local/openresty/nginx/scgi_temp && \
    chown -R www-data:www-data /usr/local/openresty/nginx && \
    chown www-data:www-data /start.sh && \
    chmod -R 755 /usr/local/openresty/nginx

USER www-data

EXPOSE 80

# Use the startup script as the entrypoint
ENTRYPOINT ["/start.sh"]
