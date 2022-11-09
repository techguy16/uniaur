git clone https://github.com/techguy16/gdevd
cd gdevd
sh ./rustup-init.sh --default-toolchain stable --profile default -q -y
make
sudo make install
systemctl enable gdevd.service
systemctl restart gdevd.service
gdevctl --help
