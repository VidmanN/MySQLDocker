FROM ubuntu:14.04.4
# Install latest updates
RUN apt-get update
RUN apt-get upgrade -y
RUN sudo date -s '2 month ago'
# Install mysql client and server
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-client mysql-server curl
# Enable remote access (default is localhost only, we change this
# otherwise our database would not be reachable from outside the container)
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
# Install database
ADD ./database.sql /var/db/database.sql
# Set Standard settings
ENV user root
ENV password root
ENV url file:/var/db/database.sql
ENV right READ
# Install starting script
ADD ./start-database.sh /usr/local/bin/start-database.sh
RUN chmod +x /usr/local/bin/start-database.sh
EXPOSE 3306
CMD ["/usr/local/bin/start-database.sh"]