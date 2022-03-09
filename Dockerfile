
ARG ALEPH_TAG=latest
FROM alephdata/aleph:${ALEPH_TAG}

COPY /site /aleph/site/
