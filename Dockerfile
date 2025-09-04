FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:ee426d429f941b68794a6c7fe51c2716f669b222f0583bdca4c6648b0c03ade7

RUN dnf install -y \
    fastfetch \
    steam-devices

RUN dnf remove -y \
    gnome-software-rpm-ostree \
    firefox-langpacks \
    firefox \
    ; dnf -y clean all

RUN bootc container lint
