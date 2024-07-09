# priobike-graphhopper

A custom [GraphHopper](https://github.com/graphhopper/graphhopper) configuration with bike routing profiles for OpenStreetMap and the SRTM height provider. 

This service is used by the PrioBike app as a fallback for our [DRN GraphHopper](https://github.com/priobike/priobike-graphhopper-drn).

[Learn more about PrioBike](https://github.com/priobike)

## Quickstart

The easiest way to run a web service with the processed data is to use the contained `Dockerfile`:

```
docker build -t priobike-graphhopper . && docker run -p 8989:8989 --rm priobike-graphhopper
```

## API

See https://docs.graphhopper.com/

## What else to know

We use a preheating script to skip the initial preprocessing step on first container bootup. See https://github.com/priobike/priobike-graphhopper/blob/main/preheat.sh  

## Contributing

We highly encourage you to open an issue or a pull request. You can also use our repository freely with the `MIT` license. 

Every service runs through testing before it is deployed in our release setup. Read more in our [PrioBike deployment readme](https://github.com/priobike/.github/blob/main/wiki/deployment.md) to understand how specific branches/tags are deployed.

## Anything unclear?

Help us improve this documentation. If you have any problems or unclarities, feel free to open an issue.
