echo "Install uniaur"

echo "Installing Dependencies..."
sudo apt install wget git > /dev/null

echo "Downloading Uniaur Scripts..."
wget -q https://raw.githubusercontent.com/techguy16/uniaur/main/uniaur > /dev/null
wget -q https://raw.githubusercontent.com/techguy16/uniaur/main/update-uniaur > /dev/null

sleep 2

echo "Making Script Executable..."
sudo chmod +x ./uniaur > /dev/null
sudo chmod +x ./update-uniaur > /dev/null
sleep 2

echo "Copying Files..."
sudo mv ./uniaur /usr/bin > /dev/null
sudo mv ./update-uniaur /usr/bin > /dev/null
sleep 2

echo "HOPEFULLY uniaur is installed"
echo "Have a nice day :)"

