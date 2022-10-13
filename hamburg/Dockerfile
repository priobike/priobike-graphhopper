FROM openjdk:8

WORKDIR /graphhopper

COPY . .

RUN wget https://github.com/graphhopper/graphhopper/releases/download/5.3/graphhopper-web-5.3.jar http://download.geofabrik.de/europe/germany/hamburg-latest.osm.pbf

ENTRYPOINT java -Ddw.server.application_connectors[0].bind_host=0.0.0.0 \
                -Ddw.server.application_connectors[0].port=8989 \
                -Ddw.graphhopper.datareader.file=hamburg-latest.osm.pbf \
                -jar /graphhopper/*.jar \
                server \
                /graphhopper/config-bike.yml