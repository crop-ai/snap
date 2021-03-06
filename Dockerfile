FROM ubuntu:focal

ENV PATH="${PATH}:/usr/local/snap/bin"

COPY update.sh .

RUN apt update && apt install -y curl fonts-dejavu fontconfig gdal-bin spatialite-bin
RUN curl https://download.esa.int/step/snap/8.0/installers/esa-snap_all_unix_8_0.sh -o /tmp/snap_install.sh && chmod +x /tmp/snap_install.sh && /tmp/snap_install.sh -q && rm -f /tmp/snap_install.sh && ./update.sh
