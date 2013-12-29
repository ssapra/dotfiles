ZSH=$HOME/.oh-my-zsh
ZSH_THEME="shaan"

eval "$(rbenv init -)"

export TERM=xterm-256color 

export LSCOLORS='dxfxcxdxbxegedabagacad'

source $ZSH/oh-my-zsh.sh

function chpwd()
{
  emulate -L zsh
  ls -aG
}

export PATH=/Users/ssapra/.rbenv/shims:~/bin:/Applications/Postgres.app/Contents/MacOS/bin:$PATH

source ~/aliases.zsh

export PGHOST=localhost
