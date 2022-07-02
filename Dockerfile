FROM rustembedded/cross:armv7-unknown-linux-gnueabihf

RUN dpkg --add-architecture armhf && \
            apt update && \
            apt upgrade -y && \
            apt install -y apt-utils apt-transport-https
RUN apt update
RUN apt install -y libdbus-1-dev:armhf
RUN apt install -y pkg-config
RUN dpkg --configure -a
RUN apt-get -f install
RUN apt install -y python2.7-minimal:armhf python2.7:armhf
RUN apt install -y webkit2gtk-4.0:armhf \
            libappindicator3-dev:armhf librsvg2-dev:armhf patchelf:armhf \
            libssl-dev libssl-dev:armhf
# We install these ones one at a time because of dependency resolving issues
RUN apt install -y gir1.2-atk-1.0:armhf
RUN apt install -y libglib2.0-dev:armhf
RUN apt install -y libatspi2.0-dev:armhf
RUN apt install -y libatspi2.0-dev:armhf
RUN apt install -y libmirclient-dev:armhf
RUN apt install -y libgtk-3-dev:armhf
RUN apt install -y libglib2.0-dev:armhf
