cd $HOME

echo "Cloning Linux.NET Repository..."
git clone https://github.com/techguy16/Linux.NET > /dev/null

echo "Compiling Linux.NET..."
cd Linux.NET
./configure ; make > /dev/null

echo "Installing Linux.NET..."
sudo make install

echo "Finished installing Linux.NET"
