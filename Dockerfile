FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:eff89d00a58654d7229e97d8a69a6b900e7a7538963bac83a10d0d9efcd7171a

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
