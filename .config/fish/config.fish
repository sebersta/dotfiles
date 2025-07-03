if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q pyenv
  pyenv init - | source
end

set -g theme_nord_light false
set fish_greeting 
export EDITOR=nvim 
export BAT_THEME="Nord"
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
set -gx PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/local/bin

abbr mkdir "mkdir -p"

alias vi="nvim"
alias vim="nvim"
alias ra="joshuto"
alias la="ls -lha"
alias df="df -h"
alias du="du -ch"

# Start tmux if it's not already running
if status is-interactive
and not set -q TMUX
    exec tmux
end

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

