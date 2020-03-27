# docker-assimp2json

This is a Dockerized [`assimp2json`][], an [`assimp`][] extension capabale of
exporting 3D models to JSON.

## Usage with Docker

The image is published as `piesku/assimp2json`.

    docker run --rm -v $(pwd):/data piesku/assimp2json:latest /data/my.obj

## Building a Local Image

To build the image locally, make sure to clone this repo together with its submodules using the `--recursive` flag:

    git clone --recursive https://github.com/stasm/docker-assimp2json.git
    docker build .

[`assimp2json`]: https://github.com/acgessler/assimp2json
[`assimp`]: https://github.com/assimp/assimp
