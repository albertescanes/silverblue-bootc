FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:7d666bdd17104661489338dbd85aad343e35fa71ac63933c78a92f5bc5306212

RUN dnf -y install \
        gnome-console \
        fastfetch \
        steam-devices && \
    dnf -y remove \
        fedora-third-party \
        gnome-software-rpm-ostree \
        ptyxis \
        firefox-langpacks \
        firefox && \
    dnf -y clean all

RUN bootc container lint
