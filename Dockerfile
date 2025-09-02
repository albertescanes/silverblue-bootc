FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:a6c02ffc1ff8fd890340dd59a45363ba516c598c4a0b320b6c27c98b3671a588

RUN dnf install -y \
    fastfetch \
    steam-devices

RUN dnf remove -y \
    gnome-software-rpm-ostree \
    firefox-langpacks \
    firefox \
    ; dnf -y clean all

RUN bootc container lint
