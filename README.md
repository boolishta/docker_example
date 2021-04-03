# docker_example

landing page on nginx

build Docker:<br/>
docker build -t <name> .
  
run container:<br/>
docker run -it --rm --name <name> -p 80:80 -p 443:443 <name>
  
go to https://localhost
