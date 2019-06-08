### MYHOUSE ###

### define base image
## the SDK version to bind to has to be passed by the builder so to select the right base image
ARG SDK_VERSION
ARG ARCHITECTURE
FROM myhouseproject/myhouse-sdk-raspbian:${ARCHITECTURE}-${SDK_VERSION}

### install your module's dependencies
RUN pip install Adafruit-Python-DHT --install-option="--force-pi2"

### copy files into the image
COPY . $WORKDIR
