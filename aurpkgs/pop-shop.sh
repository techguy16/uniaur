echo "Installing Dependencies..."
sudo apt install python3 libgtk-3-dev libgranite-dev software-properties-common gettext libappstrea libpackagekit-glib2-devlibpolkit-gobject-1-devm-dev libflatpak-dev libgee-0.8-dev libhandy-1-dev libjson-glib-dev libpackagekit-glib2-dev libpolkit-gobject-1-dev libsoup2.4-dev libxml2-dev libxml2-utils meson valac > /dev/null

echo "Cloning Repoman repository..."
git clone https://github.com/pop-os/repoman.git > /dev/null

echo "Installing Repoman..."
cd repoman
sudo python3 setup.py install > /dev/null

cd ..

echo "Cloning Pop!_Shop repository..."
git clone https://github.com/pop-os/shop > /dev/null

echo "Compiling Pop!_Shop..."
cd shop
meson build --prefix=/usr > /dev/null
cd build
ninja > /dev/null

echo "Installing Pop!_Shop..."
sudo ninja install > /dev/null

echo "Finished installing Pop!_Shop"
