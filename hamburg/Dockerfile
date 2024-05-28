FROM openjdk:8

# Use this argument to invalidate the cache of subsequent steps. See comments of: https://stackoverflow.com/a/49772666/14795847
ARG CACHE_DATE=1970-01-01
RUN echo $CACHE_DATE

WORKDIR /graphhopper

COPY . .

RUN wget https://github.com/graphhopper/graphhopper/releases/download/8.0/graphhopper-web-8.0.jar http://download.geofabrik.de/europe/germany/hamburg-latest.osm.pbf
RUN ./preheat.sh 

HEALTHCHECK --interval=5s --timeout=3s CMD curl --fail http://localhost:8989/health || exit 1

ENTRYPOINT ./run.sh