#######################################################
# Mario Sousa's .bashrc file
# qi.fisica@gmail.com
#
# Last Modified Wed 12 Nov 09:25:49 WET 2025
#######################################################
# More colors!
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
RESET="\[\033[0m\]"
RED='\e[0;31m'
BROWN='\e[0;33m'
# Change command prompt
source ~/.GITenv/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$BLUE\u@\h$RED\$(__git_ps1)$BROWN \W \n $ $RESET"

PATH=$PATH:/home/sargedas/.local/bin/

# User specific aliases and functions
alias ssh='ssh -Y'
alias cl='clear'
alias grep='grep --color=tty'
alias root='root -l'
alias greper='grep -r'
alias psm='ps -df| grep sargedas'
alias PT='setxkbmap pt'
alias EN='setxkbmap us'
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -vp'
alias rtil='rm -f *~'
alias topu="top -u $USER -c"
alias h='history'
alias e='emacs -nw'
alias nse='emacs -nw -q -l ~/.emacs_2'

# Alias to multiple ls commands
alias ls='ls --color=always' # add colors and file type extensions
alias sl='ls'
alias ll='ls -lh'
alias la='ls -A'                # show hidden files
alias lx='ll -XB'               # sort by extension
alias lk='ll -Sr'               # sort by size
alias lc='ll -cr'               # sort by change time
alias lu='ll -ur'               # sort by access time
alias lr='ll -R'                # recursive ls
alias lt='ll -tr'               # sort by date
alias lm='ll -a |more'          # pipe through='more'
alias nls='ls --color=never'    # remove ls colors
# Alias to access folders
alias cd..='cd ..'
alias cd,,='cd..'
alias ..='cd..'
alias ...='cd ../..'

alias cdw="cd ~/mcserver/"
alias cdm="cd /home/minecraft/"

# Activate python enviromnent locally
alias activate='source */bin/activate'

source ~/.GITenv/git-completion.bash

reminder_cd() {
    builtin cd "$@" && { [ ! -f .cd-reminder ] || cat .cd-reminder 1>&2; }
}
alias cd=reminder_cd
