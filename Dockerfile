# 1. Usa a imagem oficial do Tomcat como base
FROM  tomcat:latest

# 2. Apaga o conteúdo padrão para garantir uma instalação limpa
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copia o ficheiro .war (que o Jenkins vai construir) para a pasta webapps do Tomcat
COPY target/meu-webapp.war /usr/local/tomcat/webapps/
