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
