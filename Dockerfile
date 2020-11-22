FROM ubuntu:latest
RUN apt-get update && apt-get install -y -q nginx

# ./(브렌치)를 붙이지 않으면 에러가 발생한다 
COPY ./index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
