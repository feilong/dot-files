# -*- mode: sh -*-

# custom prompt (PS1)
# see: http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
PS1="\e[36m===  无坚不摧  所向披靡  英明神武  一统江湖  ===\e[0m\n[\W] \$> "

# emacs
alias emacs="TERM=screen-256color emacs -nw"
export EDITOR='emacs -nw'
export VISUAL='emacs -nw'

# helpful aliases
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias du='du -ch --max-depth=1'

if [ -e $HOME/.bashrc_os ]; then
    source $HOME/.bashrc_os
fi
if [ -e $HOME/.bashrc_machine ]; then
    source $HOME/.bashrc_machine
fi
