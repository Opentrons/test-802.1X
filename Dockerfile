FROM freeradius/freeradius-server:latest
COPY clients.conf /etc/raddb/clients.conf
COPY authorize /etc/raddb/mods-config/files/authorize
# See the readme in this directory for more information
WORKDIR /etc/raddb/certs
RUN make destroycerts
RUN ./bootstrap
