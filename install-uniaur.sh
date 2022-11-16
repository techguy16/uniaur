echo "Install uniaur"

echo 'Installing dependencies...           [                           (4%)]\r'
sudo apt install wget git > /dev/null 2>&1
sleep 2

echo 'Downloading uniaur scripts...        [#####                     (33%)]\r'
wget -q https://raw.githubusercontent.com/techguy16/uniaur/main/uniaur > /dev/null
wget -q https://raw.githubusercontent.com/techguy16/uniaur/main/update-uniaur > /dev/null

sleep 2
echo'Making script executable...          [#############             (66%)]\r'
sudo chmod +x ./uniaur > /dev/null
sudo chmod +x ./update-uniaur > /dev/null

sleep 2
echo 'Copying new files...                 [#######################   (99%)]\r'
sudo mv ./uniaur /usr/bin > /dev/null
sudo mv ./update-uniaur /usr/bin > /dev/null

sleep 2
echo 'Done!                                [#######################   (100%)]\r'
echo '\n'

echo "uniaur is installed"
echo "Please report issue reports (or request new features) @ https://github.com/techguy16/uniaur/issues"
echo "Thank you for trying out uniaur!"

