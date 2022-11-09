sudo apt install python3 libgtk-3-dev libgranite-dev software-properties-common gettext libappstrea libpackagekit-glib2-devlibpolkit-gobject-1-devm-dev libflatpak-dev libgee-0.8-dev libhandy-1-dev libjson-glib-dev libpackagekit-glib2-dev libpolkit-gobject-1-dev libsoup2.4-dev libxml2-dev libxml2-utils meson valac
git clone https://github.com/pop-os/repoman.git
cd repoman
sudo python3 setup.py install

cd ..
git clone https://github.com/pop-os/shop
cd shop
meson build --prefix=/usr
cd build
ninja
sudo ninja install
