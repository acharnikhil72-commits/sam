FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file into nginx's serving directory
COPY index.html /usr/share/nginx/html/index.html

# Render provides the PORT env var; nginx default is 80
# We override nginx to listen on the port Render expects
ENV PORT=80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]