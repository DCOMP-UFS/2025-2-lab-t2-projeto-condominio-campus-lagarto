FROM nginx:alpine

LABEL maintainer="kertf22"
LABEL description="Site do GEPACC - Grupo de Estudo e Pesquisa em Acessibilidade"
LABEL version="1.0"

# Copiar arquivos do site para o diretório padrão do nginx
COPY . /usr/share/nginx/html

# Remover o Dockerfile copiado (não é necessário no container)
RUN rm -f /usr/share/nginx/html/Dockerfile

# Expor porta 80
EXPOSE 80

# Comando padrão do nginx
CMD ["nginx", "-g", "daemon off;"]
