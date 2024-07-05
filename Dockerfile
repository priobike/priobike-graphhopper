FROM openjdk:8

# Use this to invalidate the cache of subsequent steps. See comments of: https://stackoverflow.com/a/49772666/14795847
ARG CACHE_DATE=1970-01-01
RUN echo $CACHE_DATE

ARG REGION=hamburg

WORKDIR /graphhopper

COPY ./config-bike.yml ./config-bike.yml
COPY ./preheat.sh ./preheat.sh
COPY ./run.sh ./run.sh

RUN wget https://github.com/graphhopper/graphhopper/releases/download/9.1/graphhopper-web-9.1.jar http://download.geofabrik.de/europe/germany/${REGION}-latest.osm.pbf
RUN ./preheat.sh 

HEALTHCHECK --interval=5s --timeout=3s CMD curl --fail http://localhost:8989/health || exit 1

ENTRYPOINT ./run.sh