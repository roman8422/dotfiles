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

DIFFHL=/usr/share/doc/git/contrib/diff-highlight/diff-highlight
BN=$(basename $DIFFHL)
if [ -f $DIFFHL ]; then
    if [ ! -d ~/bin ]; then
        mkdir ~/bin
    fi
    cp $DIFFHL ~/bin
    if [ ! -x ~/bin/$BN ]; then
        echo "Change permissions for $BN"
        sudo chmod +x ~/bin/$BN
    fi
fi

PROFILE=~/.profile
if [ -f $PROFILE ]; then
    . $PROFILE
fi

CFG=~/.tmux.conf
if [ -a $CFG ]; then
   mv $CFG{,.$TIMESTAMP}
fi
ln -s ~/dotfiles/tmux.conf $CFG
