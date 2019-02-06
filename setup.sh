set -x
ln -rs ./vimrc ../.vimrc
sudo git submodule update --init
sudo apt-get install python3
sudo apt-get install python3-dev
python3 ./bundle/YouCompleteMe/install.py --clang-completer
