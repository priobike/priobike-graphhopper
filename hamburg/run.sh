#!/bin/bash

java -Ddw.server.application_connectors[0].bind_host=0.0.0.0 \
    -Ddw.server.application_connectors[0].port=8989 \
    -Ddw.graphhopper.datareader.file=hamburg-latest.osm.pbf \
    -jar /graphhopper/*.jar \
    server \
    /graphhopper/config-bike.yml