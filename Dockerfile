FROM lscr.io/linuxserver/webtop:arch-kde
# if behind a firewall and need to add a root ca
# COPY root.crt /mycerts/root.crt
# RUN trust anchor --store /mycerts/root.crt

RUN sudo pacman -Sy && \
    sudo pacman -S --noconfirm  --needed git base-devel && \
    git clone https://aur.archlinux.org/yay-bin.git /home/abc/yay-bin && \
    cd /home/abc/yay-bin && \
    chown -R abc:abc /home/abc/yay-bin && \
    sudo -u abc makepkg -si --noconfirm && \
    cd .. && \
    rm -rf yay-bin

RUN pacman -S firefox --noconfirm

RUN sudo -u abc yay -S \
    globalprotect-openconnect-git \
    visual-studio-code-bin \
    nano \
    --noconfirm

