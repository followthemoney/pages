
# Aleph pages

This repository builds of the main aleph image, and adds our content pages.

## Aleph version

Make sure to reflect the correct aleph version in the `ALEPH_TAG` argument in
the [`Dockerfile`](Dockerfile) when rebuilding. A new image will be built from
this repository when pushing a new tag.
```
git commit -am 'Update some page'
git tag -a 0.2.4
git push --tags
```
