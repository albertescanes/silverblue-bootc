FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:f1d46a0a66f3bc617d73e795ad9f85b15d339f95b6e8d8122e1f3d92c99a9ae5

RUN dnf install -y \
    fastfetch \
    steam-devices

RUN dnf remove -y \
    gnome-software-rpm-ostree \
    firefox-langpacks \
    firefox \
    ; dnf -y clean all

RUN bootc container lint
