FROM ubuntu:focal

run apt update && apt install -y curl fonts-dejavu fontconfig gdal-bin
RUN curl https://download.esa.int/step/snap/8.0/installers/esa-snap_all_unix_8_0.sh -o /tmp/snap_install.sh
RUN chmod +x /tmp/snap_install.sh
RUN /tmp/snap_install.sh -q
RUN snap --nosplash --nogui --modules --update-all
