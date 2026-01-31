# Usa a imagem oficial do Apache
FROM httpd:2.4

# Define o diretório padrão onde o Apache busca os arquivos
WORKDIR /usr/local/apache2/htdocs/

# 1. Limpa os arquivos padrão do Apache ("It Works")
RUN rm -rf ./*

# 2. Copia o HTML da pasta 'src' para a raiz do servidor
COPY src/index.html .

# 3. Copia a imagem da pasta 'imgs' para a raiz do servidor
# (Assim o index.html acha a imagem apenas chamando "topologia.png")
COPY imgs/topologia.png .
