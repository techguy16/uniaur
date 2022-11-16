echo "Install uniaur"

echo -ne 'Installing dependencies...           [                           (4%)]\r'
sudo apt install wget git > /dev/null 2>&1
sleep 2

echo -ne 'Downloading uniaur scripts...        [#####                     (33%)]\r'
wget -q https://raw.githubusercontent.com/techguy16/uniaur/main/uniaur > /dev/null
wget -q https://raw.githubusercontent.com/techguy16/uniaur/main/update-uniaur > /dev/null

sleep 2
echo -ne 'Making script executable...          [#############             (66%)]\r'
sudo chmod +x ./uniaur > /dev/null
sudo chmod +x ./update-uniaur > /dev/null

sleep 2
echo -ne 'Copying new files...                 [#######################   (99%)]\r'
sudo mv ./uniaur /usr/bin > /dev/null
sudo mv ./update-uniaur /usr/bin > /dev/null

sleep 2
echo -ne 'Done!                                [#######################   (100%)]\r'
echo -ne '\n'

echo "uniaur is installed"
echo "Please report issue reports (or request new features) @ https://github.com/techguy16/uniaur/issues"
echo "Thank you for trying out uniaur!"

