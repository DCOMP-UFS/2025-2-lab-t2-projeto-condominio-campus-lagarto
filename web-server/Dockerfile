FROM nginx:alpine

WORKDIR /usr/share/nginx/html/

COPY ./web-server/index.html .
COPY ./web-server/style.css .
COPY ./web-server/lab1-edusaude-gessica/ ./lab1/
COPY ./web-server/lab2-coletivosubjetividade-JoaoPedro/ ./lab2/
COPY ./web-server/lab3-Odonto-Marco/ ./lab3/
COPY ./web-server/lab4-GEPACC--PauloHercilio/ ./lab4/
COPY ./web-server/lab5-MAES-Alisson/ ./lab5/
COPY ./web-server/lab6-fisioterapia-rafael/ ./lab6/
COPY ./web-server/planta.png ./

RUN chmod -R 755 /usr/share/nginx/html/

EXPOSE 80
