#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias tx='tmuxinator'
alias txpy='tmuxinator start pythonDev'
alias orange='python -m Orange.canvas'

export VISUAL=vim
export EDITOR="$VISUAL"
