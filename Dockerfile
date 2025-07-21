# Build stage
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build-storybook

# Serve stage
FROM nginx:stable-alpine
COPY --from=builder /app/storybook-static /usr/share/nginx/html
EXPOSE 8083
RUN sed -i 's/listen 80;/listen 8083;/' /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]