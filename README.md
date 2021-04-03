# docker_example

landing page on nginx

build Docker:

docker build -t <name> .
  
run container:

docker run -it --rm --name <name> -p 80:80 -p 443:443 <name>
  
go to https://localhost
