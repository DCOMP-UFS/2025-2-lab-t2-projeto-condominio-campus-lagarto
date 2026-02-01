FROM nginx:alpine 

WORKDIR /usr/share/nginx/html/

COPY ./index.html .
COPY ./style.css .
COPY ./lab1-edusaude-gessica/ ./lab1/
COPY ./lab2-coletivosubjetividade-JoaoPedro/ ./lab2/
COPY ./lab3-Odonto-Marco/ ./lab3/
COPY ./planta.png ./


RUN chmod -R 755 /usr/share/nginx/html/

EXPOSE 80
