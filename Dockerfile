FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:14393a89035908ca585b501dcb9fd502628fe911face4e3f2d50ece1d02abe4d

RUN dnf -y install \
        fastfetch \
        steam-devices && \
    dnf -y remove \
        gnome-classic-session \
        fedora-third-party \
        gnome-software-rpm-ostree \
        firefox-langpacks \
        firefox && \
    dnf -y clean all

RUN bootc container lint
