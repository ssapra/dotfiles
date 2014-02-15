ZSH=$HOME/.oh-my-zsh
ZSH_THEME="shaan"

eval "$(rbenv init -)"

export TERM=xterm-256color 

setopt auto_cd
setopt auto_pushd
setopt prompt_subst
setopt histignoredups
autoload -Uz compinit && compinit

export LSCOLORS='dxfxcxdxbxegedabagacad'

source $ZSH/oh-my-zsh.sh

function chpwd()
{
  emulate -L zsh
  ls -aG
}

export EDITOR='vim'
export PGHOST=localhost
plugins=(git ruby rails rake osx)

#alias python=python3

export PATH=/usr/local/bin:/Users/ssapra/.rbenv/shims:~/bin:/Applications/Postgres.app/Contents/MacOS/bin:~/.local/bin:$PATH

source ~/aliases.zsh
source ~/.bin/tmuxinator.zsh
