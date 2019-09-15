# add by Chuanqi Tan


SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
PLUGINS_DIR="./my_plugins"
echo $SHELL_FOLDER


# git clone plugins
git clone https://github.com/majutsushi/tagbar $PLUGINS_DIR/tagbar
git clone https://github.com/davidhalter/jedi-vim $PLUGINS_DIR/jedi-vim
git clone https://github.com/scrooloose/nerdcommenter $PLUGINS_DIR/nerdcommenter


# install
ln -sf $SHELL_FOLDER ~/.vim_runtime
sh install_awesome_vimrc.sh
