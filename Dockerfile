
FROM alephdata/aleph:latest
COPY /site /aleph/site/
COPY /ca.pem /usr/local/share/ca-certificates/staging.pem
RUN update-ca-certificates
