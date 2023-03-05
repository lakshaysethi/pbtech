FROM lscr.io/linuxserver/webtop:arch-kde
RUN pacman -Sy && \
    pacman -S --noconfirm  --needed git base-devel && \
    git clone https://aur.archlinux.org/yay-bin.git /root/yay
RUN pacman -S globalprotect-openconnect firefox --noconfirm
