apt-get install language-pack-zh-hant language-pack-gnome-zh-hant \
    fonts-droid fonts-arphic-uming fonts-arphic-ukai

echo "Asia/Taipei" | tee /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

apt-get purge --auto-remove -y cloud-init
rm -rf /etc/cloud /var/lib/cloud
