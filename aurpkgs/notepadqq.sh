cd $HOME

echo "Installing Dependencies..."
sudo apt-get install qt5-default qttools5-dev-tools qtwebengine5-dev libqt5websockets5-dev libqt5svg5 libqt5svg5-dev libuchardet-dev pkg-config git > /dev/null

echo "Cloning Notepadqq repository..."
git clone --recursive https://github.com/notepadqq/notepadqq.git > /dev/null

echo "Compiling Notepadqq..."
cd notepadqq
/configure --prefix /usr > /dev/null
make > /dev/null

echo "Installing Notepadqq..."
sudo make install > /dev/null

echo "Finished installing Notepadqq"
