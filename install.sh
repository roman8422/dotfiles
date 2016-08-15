# Make links for vim

TIMESTAMP=$(date +%s)

VIMRC=~/.vimrc
if [ -a $VIMRC ]; then
    mv $VIMRC{,.$TIMESTAMP}
fi
ln -s ~/dotfiles/vimrc $VIMRC

VIMDIR=~/.vim
if [ -a $VIMDIR ]; then
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
fi
ln -s ~/dotfiles/vagrant.d/Vagrantfile $VAGRANTFILE

CFG=~/.ansible.cfg
if [ -a $CFG ]; then
   mv $CFG{,.$TIMESTAMP}
fi
ln -s ~/dotfiles/ansible.cfg $CFG
