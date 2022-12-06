
# Aleph pages

This repository builds of the main aleph image, and adds our content pages.

The images will be built of of the `latest` images in the [`alephdata/aleph`](https://github.com/alephdata/aleph/) repository.

### Building

You can build the images manually like so:
```
docker build ui/. -t ghcr.io/ftmnl/aleph-ui-production:latest -t ghcr.io/ftmnl/aleph-ui-production:3.13.0
docker build . -t ghcr.io/ftmnl/aleph:latest -t ghcr.io/ftmnl/aleph:3.13.0
```

And push them with:
```
docker push ghcr.io/ftmnl/aleph-ui-production:3.13.0
docker push ghcr.io/ftmnl/aleph:3.13.0
```

### TODO - Automatically building from upstream tags

There used to be a workflow in this repository for building these, using a git
tag to tag the images. This would be a nice way of doing this, though i couldn't
immediately think of a way to use the $TAG to build of of the same upstream
tagged images.
