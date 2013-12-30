alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias migrate="rake db:migrate"
alias pull="git pull"
alias rs="rails s"
alias rc="rails c"
alias r="rake db:test:prepare && bundle exec rspec"
alias ssh='ssh -X'
alias killrails="kill -9 $(lsof -wni tcp:3000)"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias rdb="dropdb uc_events_development; PGUSER=postgres heroku pg:pull DATABASE uc_events_development -a ucevents"
alias ucrs='foreman start -f Procfile.dev'

alias be="bundle exec"
alias rake="bundle exec rake"
alias rspec="bundle exec rspec"
alias dev="cd ~/Shaan/dev"
alias uc="cd ~/Shaan/dev/uchicagoevents"
alias hh="cd ~/Shaan/dev/happyhealth"
alias lm="cd ~/Shaan/dev/linguamocha"
alias ss="cd ~/Shaan/dev/shaansapra"
alias sam="cd ~/Shaan/dev/ProjectSam"
alias class="cd ~/Shaan/uchicago/classes/Winter\ 2014/"

alias ifi='ifconfig | ack "net"'
alias untar="tar -xvvf"
alias reload="source ~/.zshrc"
alias dsremove="find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch"
alias server='open http://localhost:1337 && python -m SimpleHTTPServer 1337'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias gs="git status"
alias gc="git checkout"
alias gb="git branch -v"
alias grm="git ls-files --deleted | xargs git rm"
alias undopush="git push -f origin HEAD^:master"
alias gbcleanup="git branch --merged | grep -v "\*" | xargs -n 1 git branch -d"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias github="chrome \`git remote -v | grep github.com | grep fetch | head -1 | field 2 | sed 's/git:/http:/g'\`"

# use at the end of a command, ex: ls -la COUNT
alias -g COUNT='| wc -l'
alias -g NULL='2> /dev/null'

# ls
alias ls='ls -G'
alias ll='ls -la'
alias l1='tree --dirsfirst -ChFL 1'
alias l2='tree --dirsfirst -ChFL 2'
alias l3='tree --dirsfirst -ChFL 3'

export LSCOLORS=dxfxcxdxbxegedabagacad

if [ -x /usr/bin/dircolors ]; then
  eval "`dircolors -b`"
  alias ls='ls -Ga --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias ack='ack --color'
  alias less='less -R'
  alias diff='colordiff -dw'
fi

# after a cd, run ls
function chpwd() {
  emulate -LR zsh
  ls -G
}

# find and open files in vim
function vif() {
  vim $(find . -name \*$1\*)
}

# fix git tab completion slowness
__git_files () {
  _wanted files expl 'local files' _files
} 
