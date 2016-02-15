# Make links for vim

mv ~/.vimrc ~/.vimrc.old
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc

DIR="~/.vim"
if [ -d "$DIR" ]; then
    mv  $DIR $DIR.old
fi
ln -s ~/.dotfiles/vim/dotvim ~/.vim

