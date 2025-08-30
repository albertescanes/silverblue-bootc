FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:1f728da822390cd12b65e2e81ffe4ca09b372109f4e0da002e0967f698d20558

RUN dnf install -y \
    fastfetch \
    steam-devices

RUN dnf remove -y \
    gnome-software-rpm-ostree \
    firefox-langpacks \
    firefox \
    ; dnf -y clean all

RUN bootc container lint
