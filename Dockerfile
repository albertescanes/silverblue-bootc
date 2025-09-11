FROM quay.io/fedora-ostree-desktops/silverblue:rawhide@sha256:00a1633f3569bc97a39c988993d5cfe5d58ca394e44ccd15bc2eab016809a42b

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
