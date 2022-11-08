## arquivo para listar os comandos usados.

sudo service docker start # primeiro comando 
docker run hello-world #baixa uma imagem
docker run ubuntu #baixa a imagem do ubuntu 
## docker run <imagem> -> toda vez que roda o docker run, gera uma imagem em container.
## Da onde vem a imagem? Vem do repositório do Docker hub.docker.com

docker ps # ver quais containers rodam no computador
docker ps -a # ver quais containers estavam rodando no computador

docker run -p 8080:80 nginx # o nginx é um servidor web e expoe a porta 80
# -p 8080:80 significa que toda as vezes que rodar esse comando redireciona para a porta 80 do container. 

docker run -d -p 8080:80 nginx # roda de forma desatachada com o terminal para liberar o terminal

docker stop <id> # para de rodar o container no docker ps com o numero do CONTAINER ID
docker rm <id> # para de rodar no docker ps -a
docker rm -f <id> # remove o container no docker ps
docker start # para iniciar um container que estava parado


docker run --name nginx -d -p 8080:80 nginx # nomeia o container

docker exec # executa comandos em containers que já estao rodando
docker exec nginx ls # listar diretórios dentro do container nginx

docker exec -it nginx bash # entrar no container e digitar códigos
root@d91c4d833f3e:/# estou dentro do container
# vai entrando no arquivo até encontrar o html /usr/share/nginx/html

vim index.html # se nao existir o comando, rodar 

apt-get update
apt-get install -y vim
vim index.html

ctrl d # sai do container e volta para a maquina

docker images # verificar as imagens que tem baixadas no computador
docker rmi <nome-da-imagem> # mata a imagem

## cria o arquivo main
## prepara o arquivo Dockerfile

# faz o build com os comandos abaixo:
docker build -t marianaabdias/estudo-docker .
# -t é o nome da imagem, quando coloca o . é a pasta atual que esta

# executar a imagem
docker run marianaabdias/estudo-docker:latest
docker run -p 8080:8080 marianaabdias/estudo-docker:latest

docker push marianaabdias/estudo-docker:latest # para subir a imagem para o docker hub

# garante que todo mundo que esta trabalhando no projeto vai ter o mesmo ambiente de desenvolvimento.
# as vezes precisa de mais de um container para a imagem rodar
# docker compose, gerencia diversos containers dockers, através de um único arquivo
# cria o arquivo:
docker-compose.yaml

## para rodar o docker compose
docker-compose up # busca esse arquivo docker-compose.yaml
docker-compose up -d # roda tudo independendo de parar o terminal

docker-compose down # mata tudo que ta rodando

## fazer deploy aws com "firegatwa" / colocar containers na cloud

