#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# shellcheck source=/home/fionn/.bash_aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

#[ -r /etc/profile.d/cnf.sh ] && . /etc/profile.d/cnf.sh
[[ -f /usr/share/doc/pkgfile/command-not-found.bash ]] && \
    . /usr/share/doc/pkgfile/command-not-found.bash

# shellcheck disable=SC1094
[[ -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

[[ -f /usr/share/git/completion/git-prompt.sh ]] && \
    . /usr/share/git/completion/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
#GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWCOLORHINTS=""
GIT_PS1_SHOWUPSTREAM="auto"
#PS1='[\u@\h \W ]\$ '
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#PROMPT_COMMAND='__git_ps1 "[\u@\h \W"  "]\$ "'

export EDITOR=vim
export VISUAL="$EDITOR"

export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="&:[ ]*:exit:bg:fg:history:jrnl *"
export HISTTIMEFORMAT="%F %T "

export PATH=$HOME/bin:$HOME/.local/bin:$PATH:$HOME/node_modules/.bin

shopt -s histappend
shopt -s cmdhist
shopt -s dirspell
shopt -s cdspell

tabs -4
