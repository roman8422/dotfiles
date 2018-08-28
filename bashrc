gvim () { 
    if [ "$#" -gt 0 ]
    then
        gvim --remote-tab-silent "$@" &
    else
        gvim "$@" &
    fi
}
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

if [[ ${EUID} == 0 ]] ; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W$(__git_ps1) \$\[\033[00m\] '
else
        #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
        #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w$(__git_ps1) \$\[\033[00m\] '
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w$(__git_ps1 " (%s)") \$\[\033[00m\] '
        #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] $(__git_ps1)\$ '
fi

