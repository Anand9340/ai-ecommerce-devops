FROM nginx:alpine

# Upgrade Alpine packages to receive security fixes
RUN apk upgrade --no-cache

COPY application/index.html /usr/share/nginx/html/
COPY application/products.html /usr/share/nginx/html/
COPY application/payment.html /usr/share/nginx/html/

COPY application/style.css /usr/share/nginx/html/
COPY application/products.css /usr/share/nginx/html/
COPY application/payment.css /usr/share/nginx/html/

COPY application/script.js /usr/share/nginx/html/
COPY application/payment.js /usr/share/nginx/html/
COPY application/logo.png /usr/share/nginx/html/

EXPOSE 80
