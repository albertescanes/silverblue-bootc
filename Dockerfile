FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:7d666bdd17104661489338dbd85aad343e35fa71ac63933c78a92f5bc5306212

RUN dnf install -y \
    fastfetch \
    steam-devices

RUN dnf remove -y \
    gnome-software-rpm-ostree \
    firefox-langpacks \
    firefox \
    ; dnf -y clean all

RUN bootc container lint
