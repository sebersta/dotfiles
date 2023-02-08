if status is-interactive
    # Commands to run in interactive sessions can go here
end

function icd
    set user $HOME
    cd "$HOME/Library/Mobile\ Documents/com\~apple\~CloudDocs"
end

set fish_greeting 
export EDITOR=nvim 
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
source $HOME/.config/fish/colors.fish
set -gx PATH /opt/homebrew/bin /usr/local/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /Library/Apple/usr/bin  /Library/TeX/texbin
abbr mkdir "mkdir -p"

alias vi="nvim"
alias vim="nvim"
alias ra="ranger"
alias la="ls -lha"
alias df="df -h"
alias du="du -ch"
