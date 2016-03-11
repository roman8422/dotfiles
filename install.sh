# Make links for vim

VIMRC=~/.vimrc
if [ $(ls $VIMRC 2>/dev/null| wc -l) -ge 1 ]; then
    mv $VIMRC $VIMRC.old
fi
ln -s ~/dotfiles/vimrc $VIMRC

DIR=~/.vim
if [ $(ls $DIR 2>/dev/null | wc -l) -ge 1 ]; then
    mv  $DIR $DIR.old
fi
ln -s ~/dotfiles/vim ~/.vim

