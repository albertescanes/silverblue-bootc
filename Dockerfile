FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:59fdc5c078364aa69235a0c933e7e6f4d80551e1845f917ea05b639a59714e85

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
