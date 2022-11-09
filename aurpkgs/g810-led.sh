echo "Installing Dependencies..."
sudo apt-get install git g++ make libhidapi-dev libusb-1.0-0-dev > /dev/null

echo "Cloning g810-led repository..."
git clone https://github.com/MatMoul/g810-led.git  > /dev/null

echo "Compiling g810-led..."
cd g810-led
make bin > /dev/null

echo "Installing g810-led..."
sudo make install > /dev/null

echo "Finished installing g810-led"
