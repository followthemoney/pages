
ARG ALEPH_TAG=3.12.1
FROM alephdata/aleph:${ALEPH_TAG}

COPY /site /aleph/site/
