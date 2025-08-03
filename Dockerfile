# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy the custom Sample_text.html to Nginx's default HTML folder
COPY Sample_text.html /usr/share/nginx/html/Sample_text.html

# All docker file should be name exactly - Dockerfile
# for more than one
# project/
# ├── Dockerfile                # A default one
# ├── Dockerfile.dev            # One for development
# ├── Dockerfile.prod           # One for production

# docker build -t my-image . - to build "my-image" is the image name you are gonna give


