# Base image for rapsberrypi 3 target
FROM rustembedded/cross:armv7-unknown-linux-gnueabihf

# Install libdbus libraries and pkg-config
RUN dpkg --add-architecture armhf && \
            apt update && \
            apt upgrade -y && \
            apt-get install -y libdbus-1-dev libdbus-1-dev:armhf \
            pkg-config libgtk-3-dev webkit2gtk-4.0 \
            libappindicator3-dev librsvg2-dev patchelf \
            libssl-dev libssl-dev:armhf
# We install these ones one at a time because of dependency resolving issues
RUN apt install -y gir1.2-atk-1.0:armhf
RUN apt install -y libglib2.0-dev:armhf
RUN apt install -y libatspi2.0-dev:armhf
RUN apt install -y libatspi2.0-dev:armhf
RUN apt install -y libmirclient-dev:armhf
RUN apt install -y libgtk-3-dev:armhf
RUN apt install -y libglib2.0-dev libglib2.0-dev:armhf libglib2.0-dev
