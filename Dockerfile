
FROM alephdata/aleph:latest
COPY /site /aleph/site/
COPY /ca.pem /usr/local/share/ca-certificates/staging.crt
RUN update-ca-certificates
