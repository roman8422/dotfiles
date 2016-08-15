# Make links for vim

TIMESTAMP=$(date +%s)

VIMRC=~/.vimrc
if [ $(ls $VIMRC 2>/dev/null| wc -l) -ge 1 ]; then
    mv $VIMRC{,.$TIMESTAMP}
fi
ln -s ~/dotfiles/vimrc $VIMRC

VIMDIR=~/.vim
if [ $(ls $VIMDIR 2>/dev/null | wc -l) -ge 1 ]; then
    mv  $VIMDIR{,.$TIMESTAMP}
fi
ln -s ~/dotfiles/vim ~/.vim

VAGRANTDDIR=~/.vagrant.d
if [ ! -d "$VAGRANTDDIR" ]; then
    mkdir $VAGRANTDDIR
fi

VAGRANTFILE=$VAGRANTDDIR/Vagrantfile
if [ -f $VAGRANTFILE ]; then
   mv $VAGRANTFILE{,.$TIMESTAMP}
else
    ln -s ~/dotfiles/vagrant.d/Vagrantfile $VAGRANTFILE
fi

CFG=~/.ansible.cfg
if [ -a $CFG ]; then
   mv $CFG{,.$TIMESTAMP}
fi
ln -s ~/dotfiles/ansible.cfg $CFG
