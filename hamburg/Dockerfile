FROM openjdk:8

WORKDIR /graphhopper

COPY . .

RUN wget https://github.com/graphhopper/graphhopper/releases/download/5.3/graphhopper-web-5.3.jar http://download.geofabrik.de/europe/germany/hamburg-latest.osm.pbf
RUN ./preheat.sh 

ENTRYPOINT ./run.sh