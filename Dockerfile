FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:1375297b6446d8ad22852824fc53d50156e1dbc5ca36b95d355195beca8deb14

RUN dnf install -y \
    fastfetch \
    steam-devices

RUN dnf remove -y \
    gnome-software-rpm-ostree \
    firefox-langpacks \
    firefox \
    ; dnf -y clean all

RUN bootc container lint
