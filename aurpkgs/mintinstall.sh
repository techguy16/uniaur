echo "Cloning mintinstall repository..."
git clone https://github.com/linuxmint/mintinstall > /dev/null

echo "Compiling mintinstall..."
cd mintinstall
dpkg-buildpackage --no-sign > /dev/null

echo "Installing mintinstall..."
cd ..
sudo dpkg -i mintinstall*.deb

echo "Finished installing mintinstall"
