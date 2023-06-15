
# Aleph pages

This repository builds of the main aleph image, and adds our content pages.

The images will be built of of the official Aleph images in the
[`alephdata/aleph`](https://github.com/alephdata/aleph/) repository.

### Building

The images are built on publishing a GitHub release. To release a new version,
update the versions in [`Dockerfile`](`./Dockerfile`) and
[`ui/Dockerfile`](`./ui/Dockerfile`), commit, and tag the commit:
```
# Commit & tag
gc -am 'update to version 2.15.0'
git tag 2.15.0
git push --tags
```

When you've pushed everything, you can create a github release (you can also use
github.com if you don't want to use the command line utility):
```
gh release create 2.15.0
? Title (optional) 2.15.0
? Release notes Leave blank
? Is this a prerelease? No
? Submit? Publish release
https://github.com/followthemoney/pages/releases/tag/2.15.0
```

Now there's a github action running that builds and tags the
`ghcr.io/followthemoney/aleph` and `ghcr.io/followthemoney/aleph-ui-production` images:
```
gh run list
STATUS  TITLE                                            WORKFLOW  BRANCH  EVENT    ID          ELAPSED  AGE
✓       2.15.0                                           package   2.15.0  release  1791795172  1m0s     39m
```
