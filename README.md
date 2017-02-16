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
OSMUpdate:
```
docker run --rm -t -i -v f:/map/data/OSM/Planet:/data/osm-data/ --entrypoint osmupdate openstreetmap-osmosis-docker-bvm /data/osm-data/planet-latest.osm.pbf /data/osm-data/planet-latest-updated.osm.pbf
```
OSMOSIS:
```
docker run --rm -t -i -v f:/map/data/OSM/Planet:/data/osm-data/ openstreetmap-osmosis-docker-bvm --rbf file="/data/osm-data/planet-latest.osm.pbf" workers=4 --bp file="/data/osm-data/CM_0.poly" completeWays=yes --wb file="/data/osm-data/Cameroon_20170215.osm.pbf"
```
