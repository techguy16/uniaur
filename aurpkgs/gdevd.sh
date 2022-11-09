cd $HOME

echo "Cloning gdevd repository..."
git clone https://github.com/techguy16/gdevd > /dev/null

echo "Installing Rust..."
cd gdevd
sh ./rustup-init.sh --default-toolchain stable --profile default -q -y  > /dev/null

echo "Compiling gdevd..."
make > /dev/null

echo "Installing gdevd..."
sudo make install > /dev/null

echo "Enabling Services..."
systemctl enable gdevd.service > /dev/null
systemctl restart gdevd.service > /dev/null

echo "Finished installing gdevd"
