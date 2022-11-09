cd $HOME

echo "Installing Dependencies..."
sudo apt-get install build-essential qtcreator qt5-default git > /dev/null

echo "Cloning Lixit Spreadsheet repository..."
git clone https://github.com/lixit/spreadsheet.git > /dev/null

echo "Compiling Lixit Spreadsheet..."
cd spreadsheet
qmake spreadsheet.pro > /dev/null
