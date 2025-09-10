FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:ecca5526c0a5762bd72305b973fd1d6c4825419076737481740c5c135c9ec3b0

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
