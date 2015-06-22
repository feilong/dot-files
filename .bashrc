# make ls colorful
# see: http://stackoverflow.com/questions/1550288/mac-os-x-terminal-colors
# see: http://geoff.greer.fm/lscolors/
export CLICOLOR=1
export LSCOLORS=exgxfxdxcxegedabagacad
alias ll="ls -lh"

# custom prompt (PS1)
# see: http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
PS1="\e[36m===  无坚不摧  所向披靡  英明神武  一统江湖  ===\e[0m\n[\W] \$> "
