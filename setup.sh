set -x
ln -rs ~/.vim/vimrc ~/.vimrc
cd ~/.vim
sudo git submodule update --init --recursive
sudo apt-get install cmake
sudo apt-get install python3
sudo apt-get install python3-dev
sudo python3 ./bundle/YouCompleteMe/install.py --clang-completer --ts-completer --rust-completer
