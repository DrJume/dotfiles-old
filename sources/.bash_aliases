#!/bin/bash

alias inst='sudo apt install'
alias updt='sudo apt update && sudo apt upgrade -y'
alias l='ls -lAhF --color=auto'
alias e='exa -alFm'
alias rmr='rm -r'

# create a new directory and enter it
function mk () {
	mkdir -p -v $@ && cd $_
}
# find shorthand
function f() {
	find . -name "$1" 2>&1 | grep -v 'Permission denied'
}

alias cl='clear'

alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Set bash prompt to vi mode
set -o vi

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Set the default EDITOR
export EDITOR=vim

# Custom bash prompt via kirsle.net/wizards/ps1.html
#export PS1="\[$(tput setaf 4)\]\u\[$(tput setaf 6)\]@\[$(tput setaf 5)\]\h\[$(tput setaf 7)\]:\[$(tput setaf 2)\]\w\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h\[$(tput setaf 7)\]:\[$(tput setaf 4)\]\w\n\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Set the colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad