sudo apt-get install qt5-default qttools5-dev-tools qtwebengine5-dev libqt5websockets5-dev libqt5svg5 libqt5svg5-dev libuchardet-dev pkg-config git
git clone --recursive https://github.com/notepadqq/notepadqq.git
cd notepadqq
/configure --prefix /usr
make
sudo make install
