FROM mysql
LABEL maintainer="andre@dev-next.com"
ENV MYSQL_USER test
ENV MYSQL_PASSWORD test
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE test
CMD ["--default-authentication-plugin=mysql_native_password"]