echo "Cloning LogiUniverse Repository..."
git clone https://github.com/techguy16/LogiUniverse > /dev/null

echo "Installing Dependencies..."
sudo apt install python3-pyudev python3-psutil python3-xlib python3-evdev python3-typing-extensions python3-yaml python3-gi gir1.2-gtk-3.0 gcc python3-dev libx11-dev -y > /dev/null
pip install --user hid-parser > /dev/null

echo "Adding udev rule..."
echo rules.d/42-logitech-unify-permissions.rules >> /etc/udev/rules.d

echo "Installing LogiUniverse..."
sudo bash -c 'umask 022 ; pip install .' > /dev/null

echo "Finished installing LogiUniverse."
