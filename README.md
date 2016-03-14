# openstreetmap-osmosis-docker
Simple dockerfile to run Openstreetmap's [Osmosis tool](http://wiki.openstreetmap.org/wiki/Osmosis) in a Docker container.

Usage:
```
docker run --rm -t -i -v /some/local/path/to/your/data:/data farberg/openstreetmap-osmosis-docker
```

If you want to run a program from the [osmctools](https://packages.debian.org/jessie/osmctools) package (e.g., osmconvert), use:

```
docker run --rm -t -i -v /some/local/path/to/your/data:/data --entrypoint osmconvert farberg/openstreetmap-osmosis-docker
```

