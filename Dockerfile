FROM lscr.io/linuxserver/webtop:arch-kde
RUN sudo pacman -Sy && \
    sudo pacman -S --noconfirm  --needed git base-devel && \
    git clone https://aur.archlinux.org/yay-bin.git /home/abc/yay-bin && \
    cd /home/abc/yay-bin && \
    chown -R abc:abc /home/abc/yay-bin && \
    sudo -u abc makepkg -si --noconfirm && \
    cd .. && \
    rm -rf yay-bin

RUN pacman -S globalprotect-openconnect firefox --noconfirm
RUN yay -S  --noconfirm
RUN yay -S google-chrome --noconfirm
COPY root.crt /mycerts/root.crt
# RUN trust anchor --store /mycerts/root.crt

