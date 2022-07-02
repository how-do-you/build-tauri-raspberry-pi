# Base image for rapsberrypi 3 target
FROM rustembedded/cross:armv7-unknown-linux-gnueabihf

# Install libdbus libraries and pkg-config
RUN dpkg --add-architecture armhf && \
	    apt-get update && \
	    apt-get install -y libdbus-1-dev libdbus-1-dev:armhf \
            pkg-config libgtk-3-dev webkit2gtk-4.0 \
            libappindicator3-dev librsvg2-dev patchelf

