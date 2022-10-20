FROM freeradius/freeradius-server:latest
COPY clients.conf /etc/raddb/clients.conf
COPY authorize /etc/raddb/mods-config/files/authorize
RUN make -C /etc/raddb/certs
