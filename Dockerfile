FROM nginx:alpine

WORKDIR /usr/share/nginx/html/

COPY ./index.html .
COPY ./style.css .
COPY ./lab1-edusaude-gessica/ ./lab1/
COPY ./lab2-coletivosubjetividade-JoaoPedro/ ./lab2/
COPY ./lab3-Odonto-Marco/ ./lab3/
COPY ./lab4-GEPACC-PauloHercilio/ ./lab4/
COPY ./lab4-GEPACC-Alisson/ ./lab5/
COPY ./lab6-fIsioterapia-rafael/ ./lab6/
COPY ./planta.png ./

RUN chmod -R 755 /usr/share/nginx/html/

EXPOSE 80
