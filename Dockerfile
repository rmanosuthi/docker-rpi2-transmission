FROM mockersf/rpi2-archlinuxarm

RUN pacman -Sy --noconfirm; \
pacman -S --noconfirm --needed archlinux-keyring; \
pacman -S --noconfirm --needed transmission-cli

ADD startTransmission.sh /startTransmission.sh
RUN chmod 755 /startTransmission.sh

EXPOSE 9091 51413/tcp 51413/udp

USER transmission

ENTRYPOINT ["/bin/bash", "-c", "/startTransmission.sh"]