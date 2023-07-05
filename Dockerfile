
FROM ghcr.io/alephdata/aleph:3.14.1
COPY /site /aleph/site/
ENV ALEPH_PAGES_PATH=/aleph/site/data.ftm.nl/pages
