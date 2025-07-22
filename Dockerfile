FROM node:20 AS build
 
WORKDIR /app
 
COPY package*.json ./
RUN npm install
 
COPY . .
RUN npm run build-storybook
 
FROM nginx:alpine
 
COPY --from=build /app/storybook-static /usr/share/nginx/html
 
EXPOSE 80
 
CMD ["nginx", "-g", "daemon off;"]
 
