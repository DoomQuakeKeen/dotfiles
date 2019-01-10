. /etc/ksh.kshrc

EDITOR=vim
VISUAL=$EDITOR
PAGER=less

export EDITOR PAGER VISUAL

HISTFILE=$HOME/.ksh_history
HISTSIZE=1000
HISTFILESIZE=2000

# emacs mode
set -o emacs

alias ls='ls -F'
alias la='ls -A'
alias ll='ls -l'

alias logout='exit'

alias pkgsrc='pkg_info -Q'
alias pkgfile='pkglocate'

PS1='\w >> '

export PS1

bind ^L=clear-screen
